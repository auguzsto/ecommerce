import 'package:flutter/material.dart';

List<ButtonSegment> _segments = [
  const ButtonSegment(
    icon: Icon(Icons.price_change),
    label: Text('Recentes'),
    value: 0,
  ),
  const ButtonSegment(
    icon: Icon(Icons.price_change),
    label: Text('Ofertas'),
    value: 1,
  ),
  const ButtonSegment(
    icon: Icon(Icons.price_change),
    label: Text('Destaques'),
    value: 2,
  ),
  const ButtonSegment(
    icon: Icon(Icons.price_change),
    label: Text('Cupons'),
    value: 3,
  ),
];

abstract class ProductsConstants {
  static List<ButtonSegment> get segments => _segments;
}
