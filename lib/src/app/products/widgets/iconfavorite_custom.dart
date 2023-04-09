import 'package:ecommerce/src/app/products/controller/iconfavotire_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class IconFavoriteCustom extends StatelessWidget {
  const IconFavoriteCustom({super.key});

  @override
  Widget build(BuildContext context) {
    final iconFavotireController = Provider.of<IconFavotireController>(context);
    return IconButton(
      splashRadius: 20,
      onPressed: iconFavotireController.favorite,
      icon: const Icon(Icons.favorite),
      color: Colors.grey.shade300,
    );
  }
}
