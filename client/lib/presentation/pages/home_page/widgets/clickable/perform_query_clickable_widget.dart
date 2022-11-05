// I like to annotate clickable widget separately, maybe it's bad idk

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../blocs/query_bloc/query_bloc.dart';
import '../../../../core/constants/my_colors.dart';

class PerformQueryClickableWidget extends StatelessWidget {
  const PerformQueryClickableWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QueryBloc, QueryState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: 25),
          child: InkWell(
            onTap: () {
              // ik about separating logic from ui but pls don't be too obsessive
              if (state.isPerformingQuery) {
                return;
              }
              context.read<QueryBloc>().add(
                    const QueryEvent.performQueryPressed(),
                  );
            },
            child: Container(
              decoration: BoxDecoration(
                color: MyColors.lightGreen,
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 30,
                ),
                child: Text(
                  'Perform Query',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
