import 'package:ecommerce/src/app/items/models/items_model.dart';

List<ItemsModel> _products = [
  ItemsModel(
    id: "1",
    name: 'Tênis Nike',
    description: 'Tênis maneiro',
    price: 399.98,
    priceOffer: 320,
  ),
  ItemsModel(
    id: "2",
    name: 'Tênis Adidas',
    description: 'Tênis maneiro',
    price: 399.98,
    priceOffer: 390,
  ),
  ItemsModel(
    id: "3",
    name: 'Tênis Puma',
    description: 'Tênis maneiro',
    price: 399.98,
    priceOffer: 188.89,
  ),
  ItemsModel(
    id: "3",
    name: 'Tênis Vans',
    description: 'Tênis maneiro',
    price: 399.98,
    priceOffer: 266.55,
  ),
  ItemsModel(
    id: "4",
    name: 'Tênis Vans',
    description: 'Tênis maneiro',
    price: 399.98,
    priceOffer: 370,
  ),
  ItemsModel(
    id: "5",
    name: 'Tênis Misuno',
    description: 'Tênis maneiro',
    price: 399.98,
    priceOffer: 328.98,
  ),
];

List<ItemsModel> get products => _products;
