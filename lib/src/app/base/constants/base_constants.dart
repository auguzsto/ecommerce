import 'package:flutter/material.dart';

List<String> _labels = [
  'Cardápio',
  'Favoritos',
  'Carrinho',
  'Histórico',
];
List<IconData> _icons = [
  Icons.menu,
  Icons.favorite,
  Icons.shopping_cart,
  Icons.history,
];

abstract class BaseConstants {
  static List<String> get label => _labels;
  static List<IconData> get icon => _icons;
}
