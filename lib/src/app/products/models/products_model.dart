class ProductsModel {
  int? id;
  String? name;
  String? description;
  double? price;
  double? priceOffer;

  ProductsModel({
    this.id,
    this.name,
    this.description,
    this.price,
    this.priceOffer,
  });

  factory ProductsModel.fromMap(Map<String, dynamic> map) {
    return ProductsModel(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      price: map['price'],
      priceOffer: map['priceOffer'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "description": description,
      "price": price,
      "priceOffer": priceOffer,
    };
  }
}
