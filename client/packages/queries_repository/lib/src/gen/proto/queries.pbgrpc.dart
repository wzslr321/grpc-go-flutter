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
  static final _$performQuery =
      $grpc.ClientMethod<$0.QueryRequest, $0.QueryResponse>(
          '/queries.Query/PerformQuery',
          ($0.QueryRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.QueryResponse.fromBuffer(value));

  QueryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.QueryResponse> performQuery($0.QueryRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$performQuery, request, options: options);
  }
}

abstract class QueryServiceBase extends $grpc.Service {
  $core.String get $name => 'queries.Query';

  QueryServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.QueryRequest, $0.QueryResponse>(
        'PerformQuery',
        performQuery_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.QueryRequest.fromBuffer(value),
        ($0.QueryResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.QueryResponse> performQuery_Pre(
      $grpc.ServiceCall call, $async.Future<$0.QueryRequest> request) async {
    return performQuery(call, await request);
  }

  $async.Future<$0.QueryResponse> performQuery(
      $grpc.ServiceCall call, $0.QueryRequest request);
}
