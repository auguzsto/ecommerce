import 'package:ecommerce/src/app/base/controllers/base_controller.dart';
import 'package:ecommerce/src/app/products/controller/products_controller.dart';
import 'package:ecommerce/src/shared/app_widget.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        //Base
        ChangeNotifierProvider<BaseController>(
          create: (context) => BaseController(),
        ),
        //Products
        ChangeNotifierProvider<ProductsController>(
          create: (context) => ProductsController(),
        ),
      ],
      child: const AppWidget(),
    ),
  );
}
