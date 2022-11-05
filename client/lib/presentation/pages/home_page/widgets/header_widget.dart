import 'package:flutter/material.dart';

import '../../../core/constants/my_colors.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 25),
      child: Center(
        child: Text(
          'gRPC-Go-Flutter',
          style: TextStyle(
            fontSize: 25,
            color: MyColors.blueText,
            letterSpacing: 2,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}
