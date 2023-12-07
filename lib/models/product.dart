import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.images,
    required this.colors,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
  });
}

//Demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: ["assets/images/cloth-1.png"],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Cloth-1",
    price: 20.20,
    description: "This is 1st Cloth",
    rating: 4.1,
    isFavourite: true,
  ),
  Product(
      id: 2,
      images: ["assets/images/cloth-2.png"],
      colors: [
        const Color(0xFFF6625E),
        const Color(0xFF836DB8),
        const Color(0xFFDECB9C),
        Colors.white,
      ],
      title: "Cloth-2",
      price: 36.45,
      description: "This is 2nd Cloth",
      rating: 3.8,
      isFavourite: true),
  Product(
    id: 3,
    images: ["assets/images/cloth-3.png"],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Cloth-3",
    price: 26.20,
    description: "This is 3rd cloth",
    rating: 3.6,
    isFavourite: true,
  ),
  Product(
    id: 4,
    images: ["assets/images/cloth-4.png"],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "Cloth-4",
    price: 50.20,
    description: "This is 4th cloth",
    rating: 4.6,
    isFavourite: true,
  ),
];
