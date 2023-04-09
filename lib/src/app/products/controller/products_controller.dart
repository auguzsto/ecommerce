import 'package:flutter/material.dart';

class SegmentsController extends ChangeNotifier {
  //Segments controller
  Set<int> selectedSegments = {0};
  void changeSelected(Set<dynamic>? segments) {
    selectedSegments = {segments!.first};
    notifyListeners();
  }

  //Segments pages
  final pageController = PageController();
  void changePages(int index) {
    pageController.jumpToPage(index);
    notifyListeners();
  }
}
