import 'package:flutter/material.dart';

class CartProvider with ChangeNotifier {
  List<CartItem> cartItems = [
    CartItem(
      name: 'Product xyz',
      category: 'Danh muc',
      price: 200,
      originalPrice: 250,
      discount: 20,
      quantity: 1,
      imageUrl: 'assets/images/img_group_868.svg',
    ),
    CartItem(
      name: 'Product xyz',
      category: 'Danh muc',
      price: 200,
      originalPrice: 250,
      discount: 20,
      quantity: 1,
      imageUrl: 'assets/images/img_group_868.svg',
    ),
  ];

  double get subtotal => cartItems.fold(0, (sum, item) => sum + item.price * item.quantity);
  double get feeAndDelivery => 10.0;
  double get total => subtotal + feeAndDelivery;
}

class CartItem {
  final String name;
  final String category;
  final double price;
  final double originalPrice;
  final int discount;
  final int quantity;
  final String imageUrl;

  CartItem({
    required this.name,
    required this.category,
    required this.price,
    required this.originalPrice,
    required this.discount,
    required this.quantity,
    required this.imageUrl,
  });
}
