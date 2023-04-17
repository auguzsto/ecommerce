import 'package:flutter/material.dart';

class ProductsModel extends ChangeNotifier {
  String? id;
  String? name;
  String? description;
  double? price;
  double? priceOffer;
  String? idUser;

  ProductsModel({
    this.id,
    this.name,
    this.description,
    this.price,
    this.priceOffer,
    this.idUser,
  });

  factory ProductsModel.fromMap(Map<String, dynamic> map) {
    return ProductsModel(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      price: map['price'],
      priceOffer: map['priceOffer'],
      idUser: map['idUser'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "description": description,
      "price": price,
      "priceOffer": priceOffer,
      "idUser": idUser,
    };
  }
}
