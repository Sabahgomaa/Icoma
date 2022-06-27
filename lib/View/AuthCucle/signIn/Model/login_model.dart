// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  LoginModel({
    this.expiry,
    this.token,
  });

  DateTime? expiry;
  String? token;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
    expiry: DateTime.parse(json["expiry"]),
    token: json["token"],
  );

  Map<String, dynamic> toJson() => {
    "expiry": expiry!.toIso8601String(),
    "token": token,
  };
}
