import 'package:ecommerce/src/app/products/models/products_model.dart';

List<ProductsModel> _products = [
  ProductsModel(
    id: "1",
    name: 'Tênis Nike',
    description: 'Tênis maneiro',
    price: 399.98,
    priceOffer: 320,
  ),
  ProductsModel(
    id: "2",
    name: 'Tênis Adidas',
    description: 'Tênis maneiro',
    price: 399.98,
    priceOffer: 390,
  ),
  ProductsModel(
    id: "3",
    name: 'Tênis Puma',
    description: 'Tênis maneiro',
    price: 399.98,
    priceOffer: 188.89,
  ),
  ProductsModel(
    id: "3",
    name: 'Tênis Vans',
    description: 'Tênis maneiro',
    price: 399.98,
    priceOffer: 266.55,
  ),
  ProductsModel(
    id: "4",
    name: 'Tênis Vans',
    description: 'Tênis maneiro',
    price: 399.98,
    priceOffer: 370,
  ),
  ProductsModel(
    id: "5",
    name: 'Tênis Misuno',
    description: 'Tênis maneiro',
    price: 399.98,
    priceOffer: 328.98,
  ),
];

List<ProductsModel> get products => _products;
