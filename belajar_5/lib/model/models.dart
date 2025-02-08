// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

class DataUser {
  final List<User> data;
  DataUser({required this.data});
  factory DataUser.fromJson(Map<String, dynamic> json) => DataUser(
      data: List.from(json['data'].map((user) => User.fromJson(user))));
}

class User {
  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;

  User({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "first_name": firstName,
        "last_name": lastName,
        "avatar": avatar,
      };
}
