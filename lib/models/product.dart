import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,

  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "images/car1.jpg",
  ),
  Product(
      id: 2,
      title: "Belt Bag",
      price: 234,
      size: 8,
      description: dummyText,
      image: "images/car1.jpg",
      ),
  Product(
      id: 3,
      title: "Hang Top",
      price: 234,
      size: 10,
      description: dummyText,
      image: "images/car1.jpg",
      ),
  Product(
      id: 4,
      title: "Old Fashion",
      price: 234,
      size: 11,
      description: dummyText,
      image: "images/car1.jpg",
      ),
  Product(
      id: 5,
      title: "Office Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "images/car1.jpg",
      ),
  Product(
    id: 6,
    title: "Office Code",
    price: 234,
    size: 12,
    description: dummyText,
    image: "images/car1.jpg",

  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
