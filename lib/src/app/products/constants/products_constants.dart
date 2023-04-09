import 'package:flutter/material.dart';

List<ButtonSegment> _segments = [
  ButtonSegment(
    label: Text('Em destaques'),
    value: 'Em destaques',
  ),
  ButtonSegment(
    label: Text('Oferta do dia'),
    value: 'Oferta do dia',
  ),
  ButtonSegment(
    label: Text('Relevância'),
    value: 'Relevância',
  ),
  ButtonSegment(
    label: Text('Cupons'),
    value: 'Cupons',
  ),
];

abstract class ProductsConstants {
  static List<ButtonSegment> get segments => _segments;
}
