import 'package:queries_repository/src/domain/queries/queries_repository_interface.dart';
import 'package:queries_repository/src/domain/core/typedefs.dart';
import 'package:queries_repository/src/domain/queries/value_objects.dart';

// I know these imports are really bad, but I don't know how to make them better, I'd be grateful for some advice on that 🙂

class QueriesRepository implements QueriesRepositoryInterface {
  @override
  Future<QueryResult> performQuery(Query query) {
    // TODO: implement performQuery by connecting with grpc
    throw UnimplementedError();
  }
}