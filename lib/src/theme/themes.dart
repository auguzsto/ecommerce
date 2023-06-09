import 'package:flutter/material.dart';

ThemeData _primaryTheme = ThemeData(
  //Appbar Theme
  appBarTheme: const AppBarTheme(
    shape: Border(
      bottom: BorderSide(width: 1, color: Colors.blue),
    ),
    backgroundColor: Colors.transparent,
    foregroundColor: Colors.blue,
    centerTitle: true,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.blue),
  ),

  //Segments Button Theme
  segmentedButtonTheme: SegmentedButtonThemeData(
    style: ButtonStyle(
      textStyle: MaterialStateProperty.resolveWith(
        (states) => const TextStyle(fontSize: 13),
      ),
    ),
  ),
);

ThemeData get primaryTheme => _primaryTheme;
