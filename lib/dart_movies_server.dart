import 'dart:async';
import 'package:grpc/grpc.dart';

// Import the generated files.
import 'generated/movie_match.pb.dart';
import 'generated/movie_match.pbgrpc.dart';

class MovieMatchService extends MovieMatchServiceBase {
  // In-memory stores for demonstration.
  final Map<String, String> users = {};           // username -> password
  final Map<String, String> userIds = {};           // username -> userId
  final Map<String, String> sessions = {};          // userId -> username
  final Map<String, String> friendConnections = {}; // userId -> friend userId

  // For streaming match notifications, store subscribers.
  final Map<String, StreamController<MatchNotification>> subscribers = {};

  @override
  Future<RegisterResponse> register(ServiceCall call, RegisterRequest request) async {
    if (users.containsKey(request.username)) {
      return RegisterResponse()
        ..success = false
        ..message = 'User already exists.';
    }
    // Save user info in-memory.
    users[request.username] = request.password;
    String userId = 'user_${users.length}';
    userIds[request.username] = userId;
    return RegisterResponse()
      ..success = true
      ..message = 'Registration successful. Your userId is $userId';
  }

  @override
  Future<LoginResponse> login(ServiceCall call, LoginRequest request) async {
    if (!users.containsKey(request.username) || users[request.username] != request.password) {
      return LoginResponse()
        ..success = false
        ..message = 'Invalid username or password.';
    }
    String userId = userIds[request.username]!;
    sessions[userId] = request.username;
    return LoginResponse()
      ..success = true
      ..message = 'Login successful.'
      ..userId = userId;
  }

  @override
  Future<FriendConnectResponse> connectFriend(ServiceCall call, FriendConnectRequest request) async {
    // Verify that the user is logged in.
    if (!sessions.containsKey(request.userId)) {
      return FriendConnectResponse()
        ..success = false
        ..message = 'Invalid user.';
    }
    // In this simple example we assume the friendId is valid.
    friendConnections[request.userId] = request.friendId;
    friendConnections[request.friendId] = request.userId; // Establish mutual connection.
    return FriendConnectResponse()
      ..success = true
      ..message = 'Friend connected successfully.';
  }

  @override
  Future<MovieResponse> chooseMovie(ServiceCall call, MovieRequest request) async {
    if (!sessions.containsKey(request.userId)) {
      return MovieResponse()
        ..success = false
        ..message = 'Invalid user.';
    }
    // When a movie is chosen, notify the friend (if subscribed).
    String? friendId = friendConnections[request.userId];
    if (friendId != null && subscribers.containsKey(friendId)) {
      final notification = MatchNotification()
        ..movieId = request.movieId
        ..movieTitle = "Example Movie Title" // Replace with actual movie details from API.
        ..message = 'You have a movie match!';
      subscribers[friendId]!.add(notification);
    }
    return MovieResponse()
      ..success = true
      ..message = 'Movie selected. Waiting for friend to choose the same movie.';
  }

  @override
  Stream<MatchNotification> subscribeMatches(ServiceCall call, SubscribeRequest request) async* {
    // Create a new stream controller for this subscriber.
    final controller = StreamController<MatchNotification>();
    subscribers[request.userId] = controller;
    // Yield notifications from the stream.
    yield* controller.stream;
  }
}

