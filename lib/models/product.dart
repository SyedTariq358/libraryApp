import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Adoree Khuwaab",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/IslamicBooks/book_1.jpg",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Kaliyat Iqbal",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/images/IslamicBooks/book_2.jpg",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Aadh",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/IslamicBooks/book_3.jpg",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Ek Ankh main America",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/images/IslamicBooks/book_4.jpg",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Asbaab",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/IslamicBooks/book_5.jpg",
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Khwaish",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/IslamicBooks/book_6.jpg",
    color: Color(0xFFAEAEAE),
  ),
  Product(
    id: 7,
    title: "khwaish",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/IslamicBooks/book_6.jpg",
    color: Color(0xFFAEAEAE),
  ),
  Product(
      id: 8,
      title: "Asbaab",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/IslamicBooks/book_5.jpg",
      color: Color(0xFFFB7883)),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";