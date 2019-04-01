import 'package:flutter/material.dart';
import './product_category.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//https://next.json-generator.com/api/json/get/NJLehwwL8

    return ProductCategory(
      productCategories: [
        ProductCategoryModel("100", "Mirror", Icons.pages),
        ProductCategoryModel("101", "Wash Basin", Icons.panorama_fish_eye),
        ProductCategoryModel("103", "Crockery", Icons.photo_size_select_small),
        ProductCategoryModel("100", "Mirror", Icons.rounded_corner),
        ProductCategoryModel("101", "Wash Basin", Icons.select_all),
        ProductCategoryModel("103", "Crockery", Icons.settings_overscan),
      ],
    );
  }
}
