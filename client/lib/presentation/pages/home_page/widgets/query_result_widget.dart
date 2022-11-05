import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../blocs/query_bloc/query_bloc.dart';

class QueryResultWidget extends StatelessWidget {
  const QueryResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QueryBloc, QueryState>(
      builder: (context, state) {
        if (state.isPerformingQuery) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state.queryResult.isNone()) {
          return const Text(
            'No query performed yet 😔',
            style: TextStyle(
              color: Colors.redAccent,
            ),
          );
        }
        return state.queryResult.fold(Container.new, (result) {
          return result.fold((failure) {
            return Text(
              'Error: ${failure.toString()}',
              style: const TextStyle(
                color: Colors.red,
              ),
            );
          }, (r) {
            return Text(
              'Result: $r',
              style: const TextStyle(
                color: Colors.white,
              ),
            );
          });
        });
      },
    );
  }
}
