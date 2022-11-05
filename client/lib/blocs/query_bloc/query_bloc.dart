import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:queries_repository/queries_repository.dart';

part 'query_event.dart';
part 'query_state.dart';

part 'query_bloc.freezed.dart';

class QueryBloc extends Bloc<QueryEvent, QueryState> {
  QueryBloc() : super(QueryState.initial()) {
    on<QueryChanged>((event, emit) {
      // TODO: implement event handler
    });
    on<PerformQueryPressed>((event, emit) {
      // TODO: implement event handler
    });
  }
}
