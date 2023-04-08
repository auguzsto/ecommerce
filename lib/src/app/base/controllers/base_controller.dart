import 'package:flutter/material.dart';

class BaseController extends ChangeNotifier {
  int baseIndex = 0;
  void changePage(value) {
    baseIndex = value;
    notifyListeners();
  }
}
