import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:queries_repository/queries_repository.dart';

part 'query_event.dart';

part 'query_state.dart';

part 'query_bloc.freezed.dart';

class QueryBloc extends Bloc<QueryEvent, QueryState> {
  QueryBloc(this._queriesRepository) : super(QueryState.initial()) {
    on<QueryChanged>((event, emit) {
      emit(state.copyWith(
        query: Query(event.query),
      ));
    });
    on<PerformQueryPressed>((event, emit) async {
      emit(state.copyWith(
        isPerformingQuery: true,
      ));
      final isQueryValid = state.query.value.isRight();
      if (!isQueryValid) {
        emit(state.copyWith(
          isPerformingQuery: false,
          queryResult: optionOf(left(const QueryFailure.invalidQuery())),
        ));
        return;
      }

      final queryResult = await _queriesRepository.performQuery(state.query);
      queryResult.fold((l) {
        emit(state.copyWith(
          isPerformingQuery: false,
          queryResult: optionOf(left(l)),
        ));
      }, (r) {
        emit(state.copyWith(
          isPerformingQuery: false,
          queryResult: optionOf(right(r)),
        ));
      });
    });
  }

  final QueriesRepositoryInterface _queriesRepository;
}
