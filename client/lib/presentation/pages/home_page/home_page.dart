import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../blocs/query_bloc/query_bloc.dart';
import '../../core/constants/my_colors.dart';
import '../../core/constants/my_dimensions.dart';
import 'widgets/header_widget.dart';
import 'widgets/query_form_field_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QueryBloc(),
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
            ],
          ),
        ),
      ),
    );
  }
}
