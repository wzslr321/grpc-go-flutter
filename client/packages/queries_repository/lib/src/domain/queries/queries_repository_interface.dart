import '../core/typedefs.dart';

abstract class QueryRepositoryInterface {
  Future<QueryResult> performQuery();

  // single method in class looks ugly ik, but extension e.g.:
  // Future<List<QueryResult>> retrieveLastQueries();
}