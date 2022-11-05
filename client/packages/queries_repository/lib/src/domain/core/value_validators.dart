import 'package:fpdart/fpdart.dart';

import 'value_failures.dart';

Either<ValueFailure<String>, String> validateQuery(String input) {
  // naive validation, just to show the concept
  if (input.isNotEmpty && input.length < 100) {
    return right(input);
  } else {
    return left(ValueFailure.invalidQuery(value: input));
  }
}