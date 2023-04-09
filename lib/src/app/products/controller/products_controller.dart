import 'package:flutter/material.dart';

class ProductsController extends ChangeNotifier {
  //Segments controller
  Set<dynamic> selectedSegments = {'Em destaques'};
  void changeSelected(Set<dynamic> value) {
    selectedSegments = value;
    notifyListeners();
  }
}
