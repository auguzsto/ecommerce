import 'package:flutter/material.dart';

class ItemsModel extends ChangeNotifier {
  String? id;
  String? name;
  String? description;
  double? price;
  double? priceOffer;
  String? idUser;

  ItemsModel({
    this.id,
    this.name,
    this.description,
    this.price,
    this.priceOffer,
    this.idUser,
  });

  factory ItemsModel.fromMap(Map<String, dynamic> map) {
    return ItemsModel(
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
