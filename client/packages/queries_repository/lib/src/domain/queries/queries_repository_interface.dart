import '../core/typedefs.dart';

abstract class QueriesRepositoryInterface {
  Future<QueryResult> performQuery();

  // single method in class looks ugly ik, but extension e.g.:
  // Future<List<QueryResult>> retrieveLastQueries();
}