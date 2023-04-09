import 'package:ecommerce/src/app/products/constants/products_constants.dart';
import 'package:ecommerce/src/app/products/controller/products_controller.dart';
import 'package:ecommerce/src/app/products/widgets/segments_custom.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          //Segments
          Padding(
            padding: EdgeInsets.all(8.0),
            child: SegmentsCustom(),
          ),
        ],
      ),
    );
  }
}
