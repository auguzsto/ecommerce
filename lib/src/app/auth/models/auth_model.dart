import 'package:flutter/material.dart';

class AuthModel extends ChangeNotifier {
  String? authorization;

  AuthModel({this.authorization});

  factory AuthModel.fromMap(Map<String, dynamic> map) {
    return AuthModel(
      authorization: map["authorization"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "authorization": authorization,
    };
  }
}
