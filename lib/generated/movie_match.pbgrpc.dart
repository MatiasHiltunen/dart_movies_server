//
//  Generated code. Do not modify.
//  source: movie_match.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'movie_match.pb.dart' as $0;

export 'movie_match.pb.dart';

@$pb.GrpcServiceName('moviematch.MovieMatchService')
class MovieMatchServiceClient extends $grpc.Client {
  static final _$register = $grpc.ClientMethod<$0.RegisterRequest, $0.RegisterResponse>(
      '/moviematch.MovieMatchService/Register',
      ($0.RegisterRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.RegisterResponse.fromBuffer(value));
  static final _$login = $grpc.ClientMethod<$0.LoginRequest, $0.LoginResponse>(
      '/moviematch.MovieMatchService/Login',
      ($0.LoginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LoginResponse.fromBuffer(value));
  static final _$connectFriend = $grpc.ClientMethod<$0.FriendConnectRequest, $0.FriendConnectResponse>(
      '/moviematch.MovieMatchService/ConnectFriend',
      ($0.FriendConnectRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FriendConnectResponse.fromBuffer(value));
  static final _$chooseMovie = $grpc.ClientMethod<$0.MovieRequest, $0.MovieResponse>(
      '/moviematch.MovieMatchService/ChooseMovie',
      ($0.MovieRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MovieResponse.fromBuffer(value));
  static final _$subscribeMatches = $grpc.ClientMethod<$0.SubscribeRequest, $0.MatchNotification>(
      '/moviematch.MovieMatchService/SubscribeMatches',
      ($0.SubscribeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.MatchNotification.fromBuffer(value));

  MovieMatchServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.RegisterResponse> register($0.RegisterRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$register, request, options: options);
  }

  $grpc.ResponseFuture<$0.LoginResponse> login($0.LoginRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$login, request, options: options);
  }

  $grpc.ResponseFuture<$0.FriendConnectResponse> connectFriend($0.FriendConnectRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$connectFriend, request, options: options);
  }

  $grpc.ResponseFuture<$0.MovieResponse> chooseMovie($0.MovieRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$chooseMovie, request, options: options);
  }

  $grpc.ResponseStream<$0.MatchNotification> subscribeMatches($0.SubscribeRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$subscribeMatches, $async.Stream.fromIterable([request]), options: options);
  }
}

@$pb.GrpcServiceName('moviematch.MovieMatchService')
abstract class MovieMatchServiceBase extends $grpc.Service {
  $core.String get $name => 'moviematch.MovieMatchService';

  MovieMatchServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.RegisterRequest, $0.RegisterResponse>(
        'Register',
        register_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RegisterRequest.fromBuffer(value),
        ($0.RegisterResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LoginRequest, $0.LoginResponse>(
        'Login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LoginRequest.fromBuffer(value),
        ($0.LoginResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FriendConnectRequest, $0.FriendConnectResponse>(
        'ConnectFriend',
        connectFriend_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FriendConnectRequest.fromBuffer(value),
        ($0.FriendConnectResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.MovieRequest, $0.MovieResponse>(
        'ChooseMovie',
        chooseMovie_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.MovieRequest.fromBuffer(value),
        ($0.MovieResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SubscribeRequest, $0.MatchNotification>(
        'SubscribeMatches',
        subscribeMatches_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.SubscribeRequest.fromBuffer(value),
        ($0.MatchNotification value) => value.writeToBuffer()));
  }

  $async.Future<$0.RegisterResponse> register_Pre($grpc.ServiceCall call, $async.Future<$0.RegisterRequest> request) async {
    return register(call, await request);
  }

  $async.Future<$0.LoginResponse> login_Pre($grpc.ServiceCall call, $async.Future<$0.LoginRequest> request) async {
    return login(call, await request);
  }

  $async.Future<$0.FriendConnectResponse> connectFriend_Pre($grpc.ServiceCall call, $async.Future<$0.FriendConnectRequest> request) async {
    return connectFriend(call, await request);
  }

  $async.Future<$0.MovieResponse> chooseMovie_Pre($grpc.ServiceCall call, $async.Future<$0.MovieRequest> request) async {
    return chooseMovie(call, await request);
  }

  $async.Stream<$0.MatchNotification> subscribeMatches_Pre($grpc.ServiceCall call, $async.Future<$0.SubscribeRequest> request) async* {
    yield* subscribeMatches(call, await request);
  }

  $async.Future<$0.RegisterResponse> register($grpc.ServiceCall call, $0.RegisterRequest request);
  $async.Future<$0.LoginResponse> login($grpc.ServiceCall call, $0.LoginRequest request);
  $async.Future<$0.FriendConnectResponse> connectFriend($grpc.ServiceCall call, $0.FriendConnectRequest request);
  $async.Future<$0.MovieResponse> chooseMovie($grpc.ServiceCall call, $0.MovieRequest request);
  $async.Stream<$0.MatchNotification> subscribeMatches($grpc.ServiceCall call, $0.SubscribeRequest request);
}
