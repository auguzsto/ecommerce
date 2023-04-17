import 'package:ecommerce/src/app/auth/repository/auth_repository.dart';
import 'package:flutter/material.dart';

class AuthController extends ChangeNotifier {
  final authRepository = AuthRepository();

  Future<void> signIn(
      {required String username, required String password}) async {
    await authRepository.signIn(username: username, password: password);
  }
}
