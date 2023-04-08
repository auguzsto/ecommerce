import 'package:flutter/material.dart';

List<String> _label = [
  'Minha conta',
];
List<IconData> _icon = [
  Icons.person,
];

abstract class DrawerConstants {
  static List<String> get label => _label;
  static List<IconData> get icon => _icon;
}
