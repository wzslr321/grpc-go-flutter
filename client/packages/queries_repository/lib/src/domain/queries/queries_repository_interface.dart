import '../core/typedefs.dart';
import 'value_objects.dart';

abstract class QueriesRepositoryInterface {
  Future<QueryResult> performQuery(String query);

  // single method in class looks ugly ik, but extension e.g.:
  // Future<List<QueryResult>> retrieveLastQueries();
}