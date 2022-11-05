import 'package:fpdart/fpdart.dart';

import '../core/value_failures.dart';
import '../core/value_objects.dart';
import '../core/value_validators.dart';

// I created value objects though only single Query object is here,
// because I believe it can be extended by separating query elements
// but I am too lazy to do it 🥺

class Query extends ValueObject<String> {
  factory Query(String input) {
    return Query._(
      validateQuery(input),
    );
  }

  const Query._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}