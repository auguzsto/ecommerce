import 'dart:convert';

import 'package:http/http.dart' as http;

abstract class HttpClientImpl {
  Future<List> all({
    required String table,
    String? column,
  });
}

class HttpClient implements HttpClientImpl {
  String baseUrl = "http://localhost:8080";

  HttpClient();

  @override
  Future<List> all({required String table, String? column}) async {
    final response = await http.get(
      Uri.parse("$baseUrl/$table?$column"),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    }

    return [
      {
        "error": "error",
      }
    ];
  }
}
