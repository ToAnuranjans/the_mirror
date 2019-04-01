import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  final ProductDetailsModel product;

  ProductDetailsPage({this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Theme.of(context).accentColor,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Theme.of(context).accentColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              top: 10.0,
              left: 10.0,
              bottom: 5.0,
              right: 0.0,
            ),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Citrus fruit",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 50.0,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Container(
                  width: 80.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                      boxShadow: [BoxShadow(color: Colors.black87)],
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.0),
                        topLeft: Radius.circular(30.0),
                      )),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 55.0,
                  ),
                )
              ],
            ),
          ),
          Image.asset(
            "assets/images/wall-mirror.jpg",
            fit: BoxFit.cover,
            height: 400.0,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "About product",
                  style: TextStyle(
                    color: Colors.lightGreen,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                Text(
                  "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20.0,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.star_border,
                          size: 30.0,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.star_border,
                          size: 30.0,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.star_border,
                          size: 30.0,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.star_border,
                          size: 30.0,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.star_border,
                          size: 30.0,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "Rs. 18.5/-",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 50.0,
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.remove_circle_outline,
                            size: 60.0,
                          ),
                          onPressed: () {},
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            left: 10.0,
                            top: 10.0,
                            right: 0.0,
                            bottom: 10.0,
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            "1",
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 50.0,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 0.0,
                          ),
                          padding: EdgeInsets.only(
                            left: 0.0,
                            top: 10.0,
                            right: 10.0,
                            bottom: 10.0,
                          ),
                          child: IconButton(
                            padding: EdgeInsets.all(0.0),
                            icon: Icon(
                              Icons.add_circle_outline,
                              size: 60.0,
                            ),
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 80.0,
                  child: Text(
                    "Rs. 1000/-",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 50.0,
                    ),
                  ),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: Colors.grey,
                      )),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  child: Container(
                    height: 80.0,
                    alignment: Alignment.center,
                    child: Text(
                      "Payment",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 50.0,
                      ),
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ProductDetailsModel {}
