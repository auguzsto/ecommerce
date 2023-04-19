import 'package:flutter/material.dart';

class RouteService {
  static Future<void> to(BuildContext context, Widget page) async {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => page,
    ));
  }
}
