
import 'package:graphql/client.dart';

Future checkEmail(
    String email,
    ) async {
  try {
    String checkMail =
        'query{\n  checkEmailExists(input:{\n    email :"$email"\n  }){\n    statusCode\n    message\n    error{\n      path\n      message\n    }\n    available\n  }\n}';

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
    // return result.data['posLogin']['message'];
  } catch (error) {
    throw error;
  }
}


