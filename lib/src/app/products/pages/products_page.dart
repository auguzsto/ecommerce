import 'package:ecommerce/src/app/products/controller/segments_controller.dart';
import 'package:ecommerce/src/app/products/widgets/segmentsview_custom.dart';
import 'package:ecommerce/src/app/products/widgets/segments_custom.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

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
                children: const [
                  Text('Recentes'),
                  SegmentsViewCustom(),
                  Text('Destaques'),
                  Text('Cupons'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
