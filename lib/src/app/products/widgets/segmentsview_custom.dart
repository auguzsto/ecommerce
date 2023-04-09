import 'package:ecommerce/src/app/products/widgets/iconfavorite_custom.dart';
import 'package:ecommerce/src/shared/databases/products.dart';
import 'package:ecommerce/src/shared/services/util_services.dart';
import 'package:flutter/material.dart';

class SegmentsViewCustom extends StatelessWidget {
  SegmentsViewCustom({super.key});

  final utilService = UtilService();

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(
        products.length,
        (index) => Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Name product
                    Text(
                      products[index].name!.toUpperCase(),
                      textAlign: TextAlign.center,
                    ),

                    //Favorite icon
                    const IconFavoriteCustom(),
                  ],
                ),
              ),

              //Product image & price
              const Icon(
                Icons.shopping_cart,
                size: 120,
                color: Colors.blue,
              ),

              Text(utilService.convertToBRL(products[index].priceOffer!)),
            ],
          ),
        ),
      ),
    );
  }
}
