import 'package:ecommerce/src/app/items/models/items_model.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  ItemsModel? itemsModel;
  ItemPage({
    super.key,
    required this.itemsModel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(itemsModel!.name!),
      ),
    );
  }
}
