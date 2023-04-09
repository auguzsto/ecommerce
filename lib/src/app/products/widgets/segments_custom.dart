import 'package:ecommerce/src/app/products/constants/products_constants.dart';
import 'package:ecommerce/src/app/products/controller/products_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SegmentsCustom extends StatelessWidget {
  const SegmentsCustom({super.key});

  @override
  Widget build(BuildContext context) {
    final productsController = Provider.of<ProductsController>(context);
    return SegmentedButton(
      segments: List.generate(
        ProductsConstants.segments.length,
        (index) => ProductsConstants.segments[index],
      ),
      onSelectionChanged: (value) {
        productsController.changeSelected(value);
      },
      selected: productsController.selectedSegments,
    );
  }
}
