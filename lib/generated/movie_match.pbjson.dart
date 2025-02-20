//
//  Generated code. Do not modify.
//  source: movie_match.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use registerRequestDescriptor instead')
const RegisterRequest$json = {
  '1': 'RegisterRequest',
  '2': [
    {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `RegisterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerRequestDescriptor = $convert.base64Decode(
    'Cg9SZWdpc3RlclJlcXVlc3QSGgoIdXNlcm5hbWUYASABKAlSCHVzZXJuYW1lEhoKCHBhc3N3b3'
    'JkGAIgASgJUghwYXNzd29yZA==');

@$core.Deprecated('Use registerResponseDescriptor instead')
const RegisterResponse$json = {
  '1': 'RegisterResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `RegisterResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerResponseDescriptor = $convert.base64Decode(
    'ChBSZWdpc3RlclJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3MSGAoHbWVzc2FnZR'
    'gCIAEoCVIHbWVzc2FnZQ==');

@$core.Deprecated('Use loginRequestDescriptor instead')
const LoginRequest$json = {
  '1': 'LoginRequest',
  '2': [
    {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `LoginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRequestDescriptor = $convert.base64Decode(
    'CgxMb2dpblJlcXVlc3QSGgoIdXNlcm5hbWUYASABKAlSCHVzZXJuYW1lEhoKCHBhc3N3b3JkGA'
    'IgASgJUghwYXNzd29yZA==');

@$core.Deprecated('Use loginResponseDescriptor instead')
const LoginResponse$json = {
  '1': 'LoginResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    {'1': 'userId', '3': 3, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `LoginResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginResponseDescriptor = $convert.base64Decode(
    'Cg1Mb2dpblJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3MSGAoHbWVzc2FnZRgCIA'
    'EoCVIHbWVzc2FnZRIWCgZ1c2VySWQYAyABKAlSBnVzZXJJZA==');

@$core.Deprecated('Use friendConnectRequestDescriptor instead')
const FriendConnectRequest$json = {
  '1': 'FriendConnectRequest',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'friendId', '3': 2, '4': 1, '5': 9, '10': 'friendId'},
  ],
};

/// Descriptor for `FriendConnectRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List friendConnectRequestDescriptor = $convert.base64Decode(
    'ChRGcmllbmRDb25uZWN0UmVxdWVzdBIWCgZ1c2VySWQYASABKAlSBnVzZXJJZBIaCghmcmllbm'
    'RJZBgCIAEoCVIIZnJpZW5kSWQ=');

@$core.Deprecated('Use friendConnectResponseDescriptor instead')
const FriendConnectResponse$json = {
  '1': 'FriendConnectResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `FriendConnectResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List friendConnectResponseDescriptor = $convert.base64Decode(
    'ChVGcmllbmRDb25uZWN0UmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2VzcxIYCgdtZX'
    'NzYWdlGAIgASgJUgdtZXNzYWdl');

@$core.Deprecated('Use movieRequestDescriptor instead')
const MovieRequest$json = {
  '1': 'MovieRequest',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    {'1': 'movieId', '3': 2, '4': 1, '5': 9, '10': 'movieId'},
  ],
};

/// Descriptor for `MovieRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List movieRequestDescriptor = $convert.base64Decode(
    'CgxNb3ZpZVJlcXVlc3QSFgoGdXNlcklkGAEgASgJUgZ1c2VySWQSGAoHbW92aWVJZBgCIAEoCV'
    'IHbW92aWVJZA==');

@$core.Deprecated('Use movieResponseDescriptor instead')
const MovieResponse$json = {
  '1': 'MovieResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `MovieResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List movieResponseDescriptor = $convert.base64Decode(
    'Cg1Nb3ZpZVJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3MSGAoHbWVzc2FnZRgCIA'
    'EoCVIHbWVzc2FnZQ==');

@$core.Deprecated('Use subscribeRequestDescriptor instead')
const SubscribeRequest$json = {
  '1': 'SubscribeRequest',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `SubscribeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subscribeRequestDescriptor = $convert.base64Decode(
    'ChBTdWJzY3JpYmVSZXF1ZXN0EhYKBnVzZXJJZBgBIAEoCVIGdXNlcklk');

@$core.Deprecated('Use matchNotificationDescriptor instead')
const MatchNotification$json = {
  '1': 'MatchNotification',
  '2': [
    {'1': 'movieId', '3': 1, '4': 1, '5': 9, '10': 'movieId'},
    {'1': 'movieTitle', '3': 2, '4': 1, '5': 9, '10': 'movieTitle'},
    {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `MatchNotification`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List matchNotificationDescriptor = $convert.base64Decode(
    'ChFNYXRjaE5vdGlmaWNhdGlvbhIYCgdtb3ZpZUlkGAEgASgJUgdtb3ZpZUlkEh4KCm1vdmllVG'
    'l0bGUYAiABKAlSCm1vdmllVGl0bGUSGAoHbWVzc2FnZRgDIAEoCVIHbWVzc2FnZQ==');

