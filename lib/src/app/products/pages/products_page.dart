import 'package:ecommerce/src/app/products/constants/products_constants.dart';
import 'package:ecommerce/src/app/products/controller/products_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final productsController = Provider.of<ProductsController>(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //Segments
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SegmentedButton(
              segments: List.generate(
                ProductsConstants.segments.length,
                (index) => ProductsConstants.segments[index],
              ),
              onSelectionChanged: (value) {
                productsController.changeSelected(value);
              },
              selected: productsController.selectedSegments,
            ),
          ),
        ],
      ),
    );
  }
}
