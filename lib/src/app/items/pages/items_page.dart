import 'package:ecommerce/src/app/items/controller/segments_controller.dart';
import 'package:ecommerce/src/app/items/widgets/segmentsview_custom.dart';
import 'package:ecommerce/src/app/items/widgets/segments_custom.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemsPage extends StatelessWidget {
  const ItemsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final segmentsController = Provider.of<SegmentsController>(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //Segments
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: SegmentsCustom(),
          ),

          //Pages segments
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: PageView(
                controller: segmentsController.pageController,
                children: [
                  const Text('Recentes'),
                  SegmentsViewCustom(),
                  const Text('Destaques'),
                  const Text('Cupons'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
