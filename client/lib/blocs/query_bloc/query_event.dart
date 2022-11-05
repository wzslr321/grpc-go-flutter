part of 'query_bloc.dart';

@freezed
class QueryEvent with _$QueryEvent {
  const factory QueryEvent.queryChanged(String query) = QueryChanged;
  const factory QueryEvent.performQueryPressed() = PerformQueryPressed;
}
