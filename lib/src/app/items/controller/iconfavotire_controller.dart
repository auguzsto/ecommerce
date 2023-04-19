import 'package:flutter/material.dart';

class IconFavotireController extends ChangeNotifier {
  //Favotire
  bool isFavorite = false;
  void favorite() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
