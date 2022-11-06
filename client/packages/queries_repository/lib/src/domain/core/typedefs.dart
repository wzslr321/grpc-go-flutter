import 'package:fpdart/fpdart.dart';

import '../../gen/proto/queries.pb.dart';
import '../queries/query_failure.dart';

typedef QueryResult = Either<QueryFailure, String>;