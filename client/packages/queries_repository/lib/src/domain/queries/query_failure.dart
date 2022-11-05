import 'package:freezed_annotation/freezed_annotation.dart';

part 'query_failure.freezed.dart';

@freezed
class QueryFailure with _$QueryFailure {
  const factory QueryFailure.serverError() = ServerErrror;
  const factory QueryFailure.invalidQuery() = InvalidQuery;
}