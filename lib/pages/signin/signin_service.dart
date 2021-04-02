import 'package:get_hubweb/Modal API/posLogin.dart';
import 'package:http/http.dart' as http;

Future<PosLogin> posLogin() async {
  final url = 'http://211.24.73.35:8000/graphql';
  var response = await http.post(url,
    headers: {
    "Accept": "application/json",
      "Access-Control-Allow-Origin": "*", // Required for CORS support to work
      "Access-Control-Allow-Credentials": "true", // Required for cookies, authorization headers with HTTPS
      "Access-Control-Allow-Headers": "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
      "Access-Control-Allow-Methods": "POST, OPTIONS"
  },
  body: {
    "query":"mutation{\n  posLogin(input:{\n    email :'dminj22@gmail.com'\n    password:'Deepak@3029' \n  }){\n    statusCode\n    message\n    error{\n      path\n      message\n    }\n    accessToken\n    refershToken\n  }\n}",

  }


    );
  if (response.statusCode == 200) {
    print(response.body);
    final stringResponse = response.body;
    return posLoginFromJson(stringResponse);
  } else {
    return null;
  }
}

