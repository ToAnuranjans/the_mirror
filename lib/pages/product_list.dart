import 'package:flutter/material.dart';

class ProductListPage extends StatefulWidget {
  String productCategoryId;
  ProductListPage([String productCategoryId = ""]) {
    this.productCategoryId = productCategoryId;
  }

  _ProductListPageState createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  List<ProductModel> products = [];

  @override
  void initState() {
    products.addAll([
      ProductModel(
          id: "P100",
          productCategoryId: "100",
          name: "Mirror with fine color",
          price: 20.23,
          description:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed elementum lectus magna",
          imageUrl:
              "https://images.pexels.com/photos/962000/pexels-photo-962000.jpeg"),
      ProductModel(
          id: "P101",
          productCategoryId: "100",
          name: "Mirror with fine color",
          price: 100.23,
          description:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed elementum lectus magna",
          imageUrl:
              "https://images.pexels.com/photos/962000/pexels-photo-962000.jpeg"),
      ProductModel(
          id: "P102",
          productCategoryId: "100",
          name: "Mirror with fine color",
          price: 40.23,
          description:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed elementum lectus magna",
          imageUrl:
              "https://images.pexels.com/photos/962000/pexels-photo-962000.jpeg"),
      ProductModel(
          id: "P103",
          productCategoryId: "100",
          name: "Mirror with fine color",
          price: 90.23,
          description:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed elementum lectus magna",
          imageUrl:
              "https://images.pexels.com/photos/962000/pexels-photo-962000.jpeg"),
      ProductModel(
          id: "P104",
          productCategoryId: "100",
          name: "Mirror with fine color",
          price: 234.23,
          description:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed elementum lectus magna",
          imageUrl:
              "https://images.pexels.com/photos/962000/pexels-photo-962000.jpeg"),
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product - ${widget.productCategoryId}"),
        centerTitle: true,
      ),
      body: Container(
          child: ListView.builder(
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          var product = products[index];
          return Card(
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Image.network(
                      product.imageUrl,
                      height: 300.0,
                      width: double.infinity,
                      fit: BoxFit.fitWidth,
                    ),
                    Row(
                      children: <Widget>[
                        Text(product.name),
                        SizedBox(width: 200.0),
                      ],
                    ),
                    Positioned(
                      bottom: 0.0,
                      right: 0.0,
                      child: Text(product.price.toString()),
                    ),
                  ],
                ),
                Text(product.description)
              ],
            ),
          );
        },
      )),
    );
  }
}

class ProductModel {
  final String id;
  final String productCategoryId;
  final String name;
  final String description;
  final String imageUrl;
  final double price;

  ProductModel(
      {this.id,
      this.productCategoryId,
      this.name,
      this.description,
      this.imageUrl,
      this.price});
}
