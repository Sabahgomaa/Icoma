// // To parse this JSON data, do
// //
// //     final welcome = welcomeFromJson(jsonString);
//
// class LoginModel {
//   LoginModel({
//     this.id,
//     this.password,
//     this.lastLogin,
//     this.isSuperuser,
//     this.username,
//     this.firstName,
//     this.lastName,
//     this.email,
//     this.isStaff,
//     this.isActive,
//     this.dateJoined,
//     this.groups,
//     this.userPermissions,
//   });
//
//   int? id;
//   String? password;
//   DateTime? lastLogin;
//   bool? isSuperuser;
//   String? username;
//   FirstName? firstName;
//   LastName? lastName;
//   String? email;
//   bool? isStaff;
//   bool? isActive;
//   DateTime? dateJoined;
//   List<dynamic>? groups;
//   List<dynamic>? userPermissions;
//
//   factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
//     id: json["id"],
//     password: json["password"],
//     lastLogin: json["last_login"] == null ? null : DateTime.parse(json["last_login"]),
//     isSuperuser: json["is_superuser"],
//     username: json["username"],
//     firstName: firstNameValues.map![json["first_name"]],
//     lastName: lastNameValues.map![json["last_name"]],
//     email: json["email"],
//     isStaff: json["is_staff"],
//     isActive: json["is_active"],
//     dateJoined: DateTime.parse(json["date_joined"]),
//     groups: List<dynamic>.from(json["groups"].map((x) => x)),
//     userPermissions: List<dynamic>.from(json["user_permissions"].map((x) => x)),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "password": password,
//     "last_login": lastLogin == null ? null : lastLogin!.toIso8601String(),
//     "is_superuser": isSuperuser,
//     "username": username,
//     "first_name": firstNameValues.reverse![firstName],
//     "last_name": lastNameValues.reverse![lastName],
//     "email": email,
//     "is_staff": isStaff,
//     "is_active": isActive,
//     "date_joined": dateJoined!.toIso8601String(),
//     "groups": List<dynamic>.from(groups!.map((x) => x)),
//     "user_permissions": List<dynamic>.from(userPermissions!.map((x) => x)),
//   };
// }
//
// // ignore: constant_identifier_names
// enum FirstName { EMPTY, ALI }
//
// final firstNameValues = EnumValues({
//   "ali": FirstName.ALI,
//   "": FirstName.EMPTY
// });
//
// enum LastName { EMPTY, SAMIR, MONA }
//
// final lastNameValues = EnumValues({
//   "": LastName.EMPTY,
//   "mona": LastName.MONA,
//   "samir": LastName.SAMIR
// });
//
// class EnumValues<T> {
//   Map<String, T>? map;
//   Map<T, String>? reverseMap;
//
//    EnumValues(this.map);
//
//   Map<T, String>? get reverse {
//     if (reverseMap == null) {
//       reverseMap = map!.map((k, v) => new MapEntry(v, k));
//     }
//     return reverseMap;
//   }
// }
