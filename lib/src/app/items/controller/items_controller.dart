import 'package:ecommerce/src/app/items/repository/items_repository.dart';
import 'package:flutter/material.dart';

class ItemsController extends ChangeNotifier {
  final itemsRepository = ItemsRepository();

  Future<List> all() async {
    return itemsRepository.all();
  }
}
