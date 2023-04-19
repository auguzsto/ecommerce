import 'package:ecommerce/src/app/items/controller/items_controller.dart';
import 'package:ecommerce/src/app/items/models/items_model.dart';
import 'package:ecommerce/src/app/items/pages/item_page.dart';
import 'package:ecommerce/src/shared/services/route_service.dart';
import 'package:ecommerce/src/shared/services/util_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SegmentsViewCustom extends StatelessWidget {
  SegmentsViewCustom({super.key});

  final utilService = UtilService();

  @override
  Widget build(BuildContext context) {
    final itemController = Provider.of<ItemsController>(context);
    return FutureBuilder(
      future: itemController.all(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const CircularProgressIndicator();
        }

        return GridView.count(
          crossAxisCount: 4,
          children: List.generate(
            snapshot.data!.length,
            (index) {
              final itemsModel =
                  ItemsModel.fromMap(snapshot.data?[index] ?? {});
              return GestureDetector(
                onTap: () => RouteService.to(
                  context,
                  ItemPage(itemsModel: itemsModel),
                ),
                child: Card(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Icon(Icons.shop),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Text(itemsModel.name!),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
