// To parse this JSON data, do
//
//     final posLogin = posLoginFromJson(jsonString);

import 'dart:convert';

PosLogin posLoginFromJson(String str) => PosLogin.fromJson(json.decode(str));

String posLoginToJson(PosLogin data) => json.encode(data.toJson());

class PosLogin {
  PosLogin({
    this.typename,
    this.posLogin,
  });

  String typename;
  PosLoginClass posLogin;

  factory PosLogin.fromJson(Map<String, dynamic> json) => PosLogin(
    typename: json["__typename"],
    posLogin: PosLoginClass.fromJson(json["posLogin"]),
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename,
    "posLogin": posLogin.toJson(),
  };
}

class PosLoginClass {
  PosLoginClass({
    this.typename,
    this.statusCode,
    this.message,
    this.error,
    this.accessToken,
  });

  String typename;
  int statusCode;
  String message;
  dynamic error;
  String accessToken;

  factory PosLoginClass.fromJson(Map<String, dynamic> json) => PosLoginClass(
    typename: json["__typename"],
    statusCode: json["statusCode"],
    message: json["message"],
    error: json["error"],
    accessToken: json["accessToken"],
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename,
    "statusCode": statusCode,
    "message": message,
    "error": error,
    "accessToken": accessToken,
  };
}
