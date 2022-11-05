///
//  Generated code. Do not modify.
//  source: queries.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'queries.pb.dart' as $0;
export 'queries.pb.dart';

class QueryClient extends $grpc.Client {
  static final _$runQuery =
      $grpc.ClientMethod<$0.RunQueryRequest, $0.RunQueryResponse>(
          '/queries.Query/RunQuery',
          ($0.RunQueryRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.RunQueryResponse.fromBuffer(value));

  QueryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.RunQueryResponse> runQuery($0.RunQueryRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$runQuery, request, options: options);
  }
}

abstract class QueryServiceBase extends $grpc.Service {
  $core.String get $name => 'queries.Query';

  QueryServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.RunQueryRequest, $0.RunQueryResponse>(
        'RunQuery',
        runQuery_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RunQueryRequest.fromBuffer(value),
        ($0.RunQueryResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.RunQueryResponse> runQuery_Pre(
      $grpc.ServiceCall call, $async.Future<$0.RunQueryRequest> request) async {
    return runQuery(call, await request);
  }

  $async.Future<$0.RunQueryResponse> runQuery(
      $grpc.ServiceCall call, $0.RunQueryRequest request);
}
