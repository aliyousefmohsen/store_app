import 'package:flutter/material.dart';

class CategoryModel {
  final String title;
  final String image;
  final Color bgColor;
  final Widget? click;

  CategoryModel({
    this.click,
    required this.title,
    required this.image,
    required this.bgColor,
  });
}
