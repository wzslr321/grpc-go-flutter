import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';

import 'errors.dart';
import 'value_failures.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;

  T getOrCrash() {
    // id is a shortcut for: (right) => right
    return value.fold((l) => throw UnexpectedValueError(l), id);
  }
}