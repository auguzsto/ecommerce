import 'package:flutter/material.dart';

class TextFormCustom extends StatelessWidget {
  final TextEditingController controllers;
  final String label;
  final IconData icon;

  const TextFormCustom({
    super.key,
    required this.controllers,
    required this.label,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        label: Text(label),
        prefixIcon: Icon(icon),
      ),
    );
  }
}
