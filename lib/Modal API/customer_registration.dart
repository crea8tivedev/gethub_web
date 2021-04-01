// To parse this JSON data, do
//
//     final customerRegistrationModal = customerRegistrationModalFromJson(jsonString);

import 'dart:convert';

CustomerRegistrationModal customerRegistrationModalFromJson(String str) => CustomerRegistrationModal.fromJson(json.decode(str));

String customerRegistrationModalToJson(CustomerRegistrationModal data) => json.encode(data.toJson());

class CustomerRegistrationModal {
  CustomerRegistrationModal({
    this.typename,
    this.customerRegistration,
  });

  String typename;
  CustomerRegistration customerRegistration;

  factory CustomerRegistrationModal.fromJson(Map<String, dynamic> json) => CustomerRegistrationModal(
    typename: json["__typename"],
    customerRegistration: CustomerRegistration.fromJson(json["customerRegistration"]),
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename,
    "customerRegistration": customerRegistration.toJson(),
  };
}

class CustomerRegistration {
  CustomerRegistration({
    this.typename,
    this.statusCode,
    this.message,
    this.error,
    this.id,
  });

  String typename;
  int statusCode;
  String message;
  String error;
  String id;

  factory CustomerRegistration.fromJson(Map<String, dynamic> json) => CustomerRegistration(
    typename: json["__typename"],
    statusCode: json["statusCode"],
    message: json["message"],
    error: json["error"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "__typename": typename,
    "statusCode": statusCode,
    "message": message,
    "error": error,
    "id": id,
  };
}
