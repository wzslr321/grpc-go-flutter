import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:queries_repository/queries_repository.dart';

import '../../../blocs/query_bloc/query_bloc.dart';
import '../../core/constants/my_colors.dart';
import '../../core/constants/my_dimensions.dart';
import 'widgets/clickable/perform_query_clickable_widget.dart';
import 'widgets/header_widget.dart';
import 'widgets/query_form_field_widget.dart';
import 'widgets/query_result_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QueryBloc(
        context.read<QueriesRepository>(),
      ),
      child: const _HomePageView(),
    );
  }
}

class _HomePageView extends StatelessWidget {
  const _HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColors.primary,
        body: Padding(
          padding: EdgeInsets.symmetric(
            vertical: size.height * MyDimensions.verticalPadding,
            horizontal: size.width * MyDimensions.horizontalPadding,
          ),
          child: Column(
            children: const [
              HeaderWidget(),
              QueryFormFieldWidget(),
              PerformQueryClickableWidget(),
              SizedBox(height: 25),
              QueryResultWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
