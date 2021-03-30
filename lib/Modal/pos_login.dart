// To parse this JSON data, do
//
//     final posLogin = posLoginFromJson(jsonString);

import 'dart:convert';

PosLogin posLoginFromJson(String str) => PosLogin.fromJson(json.decode(str));

String posLoginToJson(PosLogin data) => json.encode(data.toJson());

class PosLogin {
  PosLogin({
    this.data,
  });

  Data data;

  factory PosLogin.fromJson(Map<String, dynamic> json) => PosLogin(
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "data": data.toJson(),
  };
}

class Data {
  Data({
    this.posLogin,
  });

  PosLoginClass posLogin;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    posLogin: PosLoginClass.fromJson(json["posLogin"]),
  );

  Map<String, dynamic> toJson() => {
    "posLogin": posLogin.toJson(),
  };
}

class PosLoginClass {
  PosLoginClass({
    this.statusCode,
    this.message,
    this.error,
    this.accessToken,
    this.refershToken,
  });

  int statusCode;
  String message;
  dynamic error;
  String accessToken;
  dynamic refershToken;

  factory PosLoginClass.fromJson(Map<String, dynamic> json) => PosLoginClass(
    statusCode: json["statusCode"],
    message: json["message"],
    error: json["error"],
    accessToken: json["accessToken"],
    refershToken: json["refershToken"],
  );

  Map<String, dynamic> toJson() => {
    "statusCode": statusCode,
    "message": message,
    "error": error,
    "accessToken": accessToken,
    "refershToken": refershToken,
  };
}
