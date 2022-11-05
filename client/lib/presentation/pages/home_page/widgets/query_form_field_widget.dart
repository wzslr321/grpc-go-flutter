import 'package:flutter/material.dart';

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
      onChanged: (value) {},
      validator: (value) {},
    );
  }
}
