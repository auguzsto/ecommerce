import 'package:flutter/material.dart';

List<ButtonSegment> _segments = [
  const ButtonSegment(
    icon: Icon(Icons.price_change),
    label: Text('Mais pedidos'),
    value: 0,
  ),
  const ButtonSegment(
    icon: Icon(Icons.price_change),
    label: Text('Destaques'),
    value: 1,
  ),
];

abstract class ProductsConstants {
  static List<ButtonSegment> get segments => _segments;
}
