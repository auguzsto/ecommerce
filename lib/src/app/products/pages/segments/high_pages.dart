import 'package:ecommerce/src/shared/databases/products.dart';
import 'package:flutter/material.dart';

class HighProductsPages extends StatelessWidget {
  const HighProductsPages({super.key});

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
              //Favorite icon
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      products[index].name!.toUpperCase(),
                      textAlign: TextAlign.center,
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.grey.shade300,
                    ),
                  ],
                ),
              ),

              //Product
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
