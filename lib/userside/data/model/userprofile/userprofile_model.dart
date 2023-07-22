// To parse this JSON data, do
//
//     final userProfileModel = userProfileModelFromJson(jsonString);

import 'dart:convert';

UserProfileModel userProfileModelFromJson(Map<String, dynamic> str) =>
    UserProfileModel.fromJson(str);

String userProfileModelToJson(UserProfileModel data) =>
    json.encode(data.toJson());

class UserProfileModel {
  User? user;
  bool? loggedIn;
  String? token;

  UserProfileModel({
    this.user,
    this.loggedIn,
    this.token,
  });

  factory UserProfileModel.fromJson(Map<String, dynamic> json) =>
      UserProfileModel(
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        loggedIn: json["loggedIn"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "user": user?.toJson(),
        "loggedIn": loggedIn,
        "token": token,
      };
}

class User {
  String? id;
  String? name;
  String? email;
  int? v;
  bool? block;
  String? picture;

  User({
    this.id,
    this.name,
    this.email,
    this.v,
    this.block,
    this.picture,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["_id"],
        name: json["name"],
        email: json["email"],
        v: json["__v"],
        block: json["block"],
        picture: json["picture"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "email": email,
        "__v": v,
        "block": block,
        "picture": picture,
      };
}
