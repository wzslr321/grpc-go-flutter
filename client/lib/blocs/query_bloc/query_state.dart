part of 'query_bloc.dart';

@freezed
class QueryState with _$QueryState {
  const factory QueryState({
    required Query query,
  }) = _QueryState;

  factory QueryState.initial() => QueryState(
    query: Query.empty(),
  );
}
