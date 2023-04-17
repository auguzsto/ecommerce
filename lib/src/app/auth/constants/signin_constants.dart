import 'package:flutter/material.dart';

List<String> _label = [
  "Digite seu usuário",
  "Digite sua senha",
];

List<IconData> _icon = [
  Icons.person,
  Icons.key,
];

abstract class SignInConstants {
  static List<String> get label => _label;
  static List<IconData> get icon => _icon;
}
