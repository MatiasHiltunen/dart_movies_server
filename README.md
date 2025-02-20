# Dart gRPC server example

_This is a gRPC server example for Cross-Platform Mobile Application Development course._

Flutter application for this example can be found here: https://github.com/MatiasHiltunen/flutter_example_grpc


## Protos

If changes to protos are made in server's proto-file, update the proto-file also in other projects. This is important as the proto-file needs to be consistent everywhere its used. 


After updating proto-file on protos folder, update the generated code with:

```bash
protoc --dart_out=grpc:lib/generated -Iprotos protos/movie_match.proto
```

- Note: requires `protoc` to be installed and available in PATH: https://grpc.io/docs/protoc-installation/


