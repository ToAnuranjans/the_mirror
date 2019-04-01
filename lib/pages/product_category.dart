import 'package:flutter/material.dart';

import './product_list.dart';

class ProductCategory extends StatelessWidget {
  final List<ProductCategoryModel> productCategories;

  ProductCategory({this.productCategories});

  @override
  Widget build(BuildContext context) {
    return Container(child: _buildProducts());
  }

  Widget _buildProducts() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemCount: productCategories.length,
      itemBuilder: (BuildContext context, int index) {
        var productCategory = productCategories[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) =>
                        ProductListPage(productCategory.id)));
          },
          child: Card(
            child: Column(
              children: <Widget>[
                Icon(
                  productCategory.icon,
                  size: 120.0,
                  color: Colors.orangeAccent,
                ),
                Expanded(
                  child: Text(
                    productCategory.name,
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class ProductCategoryModel {
  final String id;
  final String name;
  final IconData icon;
  ProductCategoryModel(this.id, this.name, this.icon);
}
