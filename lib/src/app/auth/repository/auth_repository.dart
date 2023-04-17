import 'dart:convert';

import 'package:ecommerce/src/app/auth/models/auth_model.dart';
import 'package:ecommerce/src/shared/services/http_client.dart';
import 'package:http/http.dart' as http;

class AuthRepository {
  Future<void> signIn({
    required String username,
    required String password,
  }) async {
    final HttpClient httpClient = HttpClient();

    final response = await http.post(
      Uri.parse("http://localhost:8080/auth"),
      headers: {
        "Content-Type": "application/json",
      },
      body: jsonEncode({
        "username": username,
        "password": password,
      }),
    );

    if (response.statusCode == 200) {
      final authModel = AuthModel.fromMap(jsonDecode(response.body));
    }
  }
}
