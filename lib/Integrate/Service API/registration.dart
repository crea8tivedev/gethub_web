import 'dart:convert';
import 'package:get_hubweb/Integrate/Modal%20API/customer_registration.dart';
import 'package:graphql/client.dart';


Future<CustomerRegistrationModal> customerRegistration(
  email,
  password,
  countryId,
  businessName,
  businessDomain,
  firstName,
  lastName,
  phone,
  businessTypeId,
  int noOfStores,
) async {
  try {
    var customerRegistration =
        'mutation{\n  customerRegistration(input:{\n    email : "$email"\n    password: "$password"\n    countryId : "$countryId"\n    businessName: "$businessName"\n    businessDomain : "$businessDomain"\n    firstName :"$firstName"\n    lastName :"$lastName"\n    phone :"$phone"\n    businessTypeId :"$businessTypeId"\n    noOfStores:$noOfStores\n  }){\n    statusCode\n    message\n    error{\n      path\n      message\n    }\n    id\n  }\n}';

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
      document: gql(customerRegistration),
    );

    final QueryResult result = await client.mutate(options);

    if (result.hasException) {
      print('exception;');
      print(result.exception.toString());
      // return '';
    }
    print(json.encode(result.data));
    print(result.data);
    return customerRegistrationModalFromJson(json.encode(result.data));
    // return result.data['customerRegistration']['message'];
  } catch (error) {
    throw error;
  }
}
