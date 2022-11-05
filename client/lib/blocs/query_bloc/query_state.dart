part of 'query_bloc.dart';

@freezed
class QueryState with _$QueryState {
  const factory QueryState({
    required Query query,
    required Option<QueryResult> queryResult,
    @Default(false) bool isPerformingQuery,
  }) = _QueryState;

  factory QueryState.initial() => QueryState(
    query: Query.empty(),
    queryResult: none(),
  );
}
