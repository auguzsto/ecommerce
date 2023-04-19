import 'package:ecommerce/src/app/base/controllers/base_controller.dart';
import 'package:ecommerce/src/app/items/controller/iconfavotire_controller.dart';
import 'package:ecommerce/src/app/items/controller/items_controller.dart';
import 'package:ecommerce/src/app/items/controller/segments_controller.dart';
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
        ChangeNotifierProvider<SegmentsController>(
          create: (context) => SegmentsController(),
        ),
        ChangeNotifierProvider<IconFavotireController>(
          create: (context) => IconFavotireController(),
        ),
        ChangeNotifierProvider<ItemsController>(
          create: (context) => ItemsController(),
        ),
      ],
      child: const AppWidget(),
    ),
  );
}
