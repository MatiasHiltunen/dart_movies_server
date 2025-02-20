import 'package:dart_movies_server/dart_movies_server.dart';
import 'package:grpc/grpc.dart';

Future<void> main(List<String> args) async {
  // Create and start the server.
  final server = Server.create(services: [MovieMatchService()]);
  await server.serve(port: 50051);
  print('gRPC server listening on port ${server.port}...');
}
