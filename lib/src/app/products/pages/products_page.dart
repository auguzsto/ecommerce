import 'package:ecommerce/src/app/products/controller/segments_controller.dart';
import 'package:ecommerce/src/app/products/pages/segments/high_pages.dart';
import 'package:ecommerce/src/app/products/widgets/segments_custom.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductsPage extends StatelessWidget {
  ProductsPage({super.key});

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
            child: PageView(
              controller: segmentsController.pageController,
              children: [
                HighProductsPages(),
                Text('Ofertas'),
                Text('Revelância'),
                Text('Cupons'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
