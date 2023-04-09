import 'package:ecommerce/src/shared/databases/products.dart';
import 'package:flutter/material.dart';

class OffersProductsPages extends StatelessWidget {
  const OffersProductsPages({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: List.generate(
        products.where((element) => element.priceOffer != 0).length,
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
                    Icon(
                      Icons.favorite,
                      color: Colors.grey.shade300,
                    ),
                  ],
                ),
              ),

              //Product image & price
              const Icon(
                Icons.shopping_cart,
                size: 120,
                color: Colors.blue,
              ),

              Text(products[index].price!.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
