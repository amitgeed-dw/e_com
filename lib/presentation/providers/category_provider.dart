import 'package:flutter/material.dart';

class CategoryProvider with ChangeNotifier {
  final List<CategoryItem> categoryItems = [
    CategoryItem(
      title: "Men’s Fashion",
      subtitle: "Checkout more",
      imagePath: "assets/images/img_image_1.png",
    ),
    CategoryItem(
      title: "Women’s Fashion",
      subtitle: "Checkout more",
      imagePath: "assets/images/img_image_2.png",
    ),
    CategoryItem(
      title: "Kids Fashion",
      subtitle: "Checkout more",
      imagePath: "assets/images/img_image_3.png",
    ),
    CategoryItem(
      title: "Stylish & Classy",
      subtitle: "Footwear",
      imagePath: "assets/images/img_image_4.png",
    ),
  ];
}

class CategoryItem {
  final String title;
  final String subtitle;
  final String imagePath;

  CategoryItem({
    required this.title,
    required this.subtitle,
    required this.imagePath,
  });
}
