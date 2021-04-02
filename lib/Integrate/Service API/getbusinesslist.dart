
import 'package:graphql/client.dart';

Future getBusinessList()async {
  try {
    String checkMail = r'''query{
  getBusinessTypes {
    statusCode
    message
    error{
      path
      message
    }
    data{
      id
      name
    }
  }
}''';

    final _httpLink = HttpLink(
      'http://211.24.73.35:8000/graphql',
    );

    Link _link = (_httpLink);

    final GraphQLClient client = GraphQLClient(
      cache: GraphQLCache(),
      link: _link,
    );

    print(client.link);

    final QueryOptions options = QueryOptions(
      document: gql(checkMail),
    );

    final QueryResult result = await client.query(options);

    if (result.hasException) {
      print('exception;');
      print(result.exception.toString());
    }
    print(result.data);
    // return (jsonEncode(result.data));
    return result.data;
  } catch (error) {
    throw error;
  }
}


