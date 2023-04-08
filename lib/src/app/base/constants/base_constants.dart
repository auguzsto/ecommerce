import 'package:flutter/material.dart';

List<String> _labels = [
  'Ofertas do dia',
  'Menor preço',
  'Carrinho',
  'Histórico',
];
List<IconData> _icons = [
  Icons.price_change,
  Icons.price_check,
  Icons.shopping_cart,
  Icons.history,
];

abstract class BaseConstants {
  static List<String> get label => _labels;
  static List<IconData> get icon => _icons;
}
