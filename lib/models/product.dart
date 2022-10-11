import 'package:flutter/cupertino.dart';

class Product with ChangeNotifier {
  String name;
  String imageUrl;
  String title;
  double price;
  int quantity = 1;

  Product({
    required this.name,
    required this.price,
    required this.title,
    required this.imageUrl,
  });
}

class Products with ChangeNotifier {
  final List<Product> _products = [
    Product(
        name: 'Cheese Burger ',
        price: 40,
        title: 'Hot & Fresh Burger',
        imageUrl: 'assets/images/1.png'),
    Product(
        name: 'Cheese Burger ',
        price: 55,
        title: 'Hot & Fresh Burger',
        imageUrl: 'assets/images/2.png'),
    Product(
        name: 'Cheese Burger ',
        price: 30,
        title: 'Hot & Fresh Burger',
        imageUrl: 'assets/images/3.png'),
    Product(
        name: 'Cheese Burger ',
        price: 50,
        title: 'Hot & Fresh Burger',
        imageUrl: 'assets/images/4.png')
  ];

  List<Product> get products {
    return [..._products];
  }

 
}
