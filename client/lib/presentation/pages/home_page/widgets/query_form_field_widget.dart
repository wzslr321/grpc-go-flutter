import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../blocs/query_bloc/query_bloc.dart';

class QueryFormFieldWidget extends StatelessWidget {
  const QueryFormFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Query',
        labelStyle: TextStyle(
          color: Colors.white,
        ),
      ),
      style: const TextStyle(
        color: Colors.white,
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onChanged: (query) => context.read<QueryBloc>().add(
            QueryEvent.queryChanged(query),
          ),
      validator: (_) => context.read<QueryBloc>().state.query.value.fold(
            (l) => l.map(
              invalidQuery: (_) => 'Invalid Query',
            ),
            (r) => null,
          ),
    );
  }
}
