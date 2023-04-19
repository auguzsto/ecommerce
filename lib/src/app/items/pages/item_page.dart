import 'package:ecommerce/src/app/items/controller/items_controller.dart';
import 'package:ecommerce/src/app/items/models/items_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemPage extends StatelessWidget {
  String? itemId;
  ItemPage({
    super.key,
    required this.itemId,
  });

  @override
  Widget build(BuildContext context) {
    final itemController = Provider.of<ItemsController>(context);
    return FutureBuilder(
      future: itemController.findById(itemId!),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        final itemsModel = ItemsModel.fromMap(snapshot.data![0] ?? {});

        return Scaffold(
          appBar: AppBar(
            title: Text(itemsModel.name!),
          ),
        );
      },
    );
  }
}
