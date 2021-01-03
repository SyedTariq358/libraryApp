import 'package:flutter/material.dart';

class Cart {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Cart({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Cart> carts = [
];