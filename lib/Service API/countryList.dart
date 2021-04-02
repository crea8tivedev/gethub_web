import 'package:graphql/client.dart';

Future getCountryData() async {
  try {
    String checkMail = r'''query{
  getCountriesList{
    statusCode
    message
    error{
      message
      path
    }
    data{
      id
      name
      code
      currency
      trading_currency
      phone_code
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
    return result.data;
    // return (jsonEncode(result.data));
    // return result.data['posLogin']['message'];
  } catch (error) {
    throw error;
  }
}


