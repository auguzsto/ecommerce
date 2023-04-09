import 'package:ecommerce/src/app/products/constants/products_constants.dart';
import 'package:ecommerce/src/app/products/controller/segments_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SegmentsCustom extends StatelessWidget {
  const SegmentsCustom({super.key});

  @override
  Widget build(BuildContext context) {
    final segmentsController = Provider.of<SegmentsController>(context);
    return SegmentedButton(
      segments: List.generate(
        ProductsConstants.segments.length,
        (index) => ProductsConstants.segments[index],
      ),
      onSelectionChanged: (value) {
        segmentsController.changePages(value.first);
        segmentsController.changeSelected(value);
      },
      selected: segmentsController.selectedSegments,
    );
  }
}
