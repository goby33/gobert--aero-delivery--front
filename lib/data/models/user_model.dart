import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String lastName;
  String firstName;
  String email;
  String urlImage;
  Timestamp birthday;

  UserModel({
    required this.lastName,
    required this.firstName,
    required this.email,
    required this.urlImage,
    required this.birthday,
  });

  Map<String, dynamic> toJson() {
    return {
      'lastName': lastName,
      'firstName': firstName,
      'email': email,
      'urlImage': urlImage,
      'birthday': birthday,
    };
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      lastName: json['lastName'],
      firstName: json['firstName'],
      email: json['email'],
      urlImage: json['urlImage'],
      birthday: json['birthday'],
    );
  }
}
