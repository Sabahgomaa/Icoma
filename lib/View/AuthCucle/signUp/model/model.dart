// // To parse this JSON data, do
// //
// //     final userModel = userModelFromJson(jsonString);
//
// import 'dart:convert';
//
// UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));
//
// String userModelToJson(UserModel data) => json.encode(data.toJson());
//
// class UserModel {
//   UserModel({
//     this.user,
//     this.firstName,
//     this.token,
//   });
//
//   User? user;
//   String? firstName;
//   String? token;
//
//   factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
//     user: User.fromJson(json["user"]),
//     firstName: json["first_name"],
//     token: json["token"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "user": user!.toJson(),
//     "first_name": firstName,
//     "token": token,
//   };
// }
//
// class User {
//   User({
//     this.id,
//     this.email,
//   });
//
//   int? id;
//   String? email;
//
//   factory User.fromJson(Map<String, dynamic> json) => User(
//     id: json["id"],
//     email: json["email"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "email": email,
//   };
// }
