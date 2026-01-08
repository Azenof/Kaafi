import '/exports/data_paths.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Category {
  final String categoryId;
  final String name;
  final String parentCategoryId;

  Category({
    required this.categoryId,
    required this.name,
    required this.parentCategoryId,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      categoryId: json['categoryId'],
      name: json['name'],
      parentCategoryId: json['parentCategoryId'],
    );
  }
}
