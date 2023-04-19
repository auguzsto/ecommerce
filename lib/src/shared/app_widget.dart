import 'package:ecommerce/src/app/base/base.dart';
import 'package:ecommerce/src/theme/themes.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: primaryTheme,
      debugShowCheckedModeBanner: false,
      home: const BasePage(),
    );
  }
}
