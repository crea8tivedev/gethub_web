import 'dart:convert';

import 'package:get_hubweb/Integrate/Modal%20API/posLogin.dart';
import 'package:graphql/client.dart';



Future<PosLogin> posLogin(
    String email,
    String password,
    ) async {
  try {
    String posLogin =
        'mutation{\nposLogin(input:{\nemail :"$email",\npassword :"$password"\n}){\nstatusCode\nmessage\nerror{\nmessage\npath\n}\naccessToken\n}}';

    final _httpLink = HttpLink(
      'http://211.24.73.35:8000/graphql',
    );

    Link _link = (_httpLink);

    final GraphQLClient client = GraphQLClient(
      cache: GraphQLCache(),
      link: _link,
    );

    print(client.link);

    final MutationOptions options = MutationOptions(
      document: gql(posLogin),
    );

    final QueryResult result = await client.mutate(options);

    if (result.hasException) {
      print('exception;');
      print(result.exception.toString());
    }
print(result.data);
   return posLoginFromJson(jsonEncode(result.data));
    // return result.data['posLogin']['message'];
  } catch (error) {
    throw error;
  }
}