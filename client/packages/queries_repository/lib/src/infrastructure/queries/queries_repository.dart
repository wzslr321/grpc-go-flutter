import 'package:queries_repository/src/domain/queries/queries_repository_interface.dart';
import 'package:queries_repository/src/domain/core/typedefs.dart';

class QueriesRepository implements QueriesRepositoryInterface {
  @override
  Future<QueryResult> performQuery() {
    // TODO: implement performQuery by connecting with grpc
    throw UnimplementedError();
  }
}