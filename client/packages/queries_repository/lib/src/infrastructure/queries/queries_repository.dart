import 'package:fpdart/fpdart.dart';
import 'package:grpc/grpc.dart';
import 'package:queries_repository/src/domain/queries/queries_repository_interface.dart';
import 'package:queries_repository/src/domain/core/typedefs.dart';
import 'package:queries_repository/src/domain/queries/query_failure.dart';
import 'package:queries_repository/src/domain/queries/value_objects.dart';
import 'package:queries_repository/src/gen/proto/queries.pbgrpc.dart';


// I know these imports are really bad, but I don't know how to make them better, I'd be grateful for some advice on that 🙂

class QueriesRepository implements QueriesRepositoryInterface {
  @override
  Future<QueryResult> performQuery(String query) async {
    final channel = ClientChannel(
      'localhost',
      port: 50051,
      options: ChannelOptions(
        credentials: const ChannelCredentials.insecure(),
        codecRegistry:
        CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
      ),
    );

    final client = QueryClient(channel);
    try {
      final response = await client.performQuery(
          QueryRequest()
            ..query = query
      );
      return right(response.result);
    } catch (err) {
      print(err);
      return left(const QueryFailure.serverError());
    }
  }
}
