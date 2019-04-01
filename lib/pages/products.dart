import 'package:flutter/material.dart';

import '../widgets/custom_card.dart';
import '../stubs/products.data.dart';

// https://dribbble.com/shots/6115304-Gourmet-Takeaway-Platform-4/attachments

class ProductsPage extends StatelessWidget {
  ProductsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
        title: Text(
          "Mirror",
          style: TextStyle(
            fontSize: 50.0,
            letterSpacing: 2.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          Icon(Icons.shopping_cart),
        ],
      ),
      body: ListView.builder(
          itemCount: models.length,
          itemBuilder: (BuildContext context, int index) {
            return CustomCard(
              model: models[index],
            );
          }),
    );
  }
}
