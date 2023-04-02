import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AssetsDetails {
  final int id;
  final String image;
  final String title;
  final String description;
  final double price;


  AssetsDetails({
    required this.id,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
  });

  final isFavorite = false.obs;
}
