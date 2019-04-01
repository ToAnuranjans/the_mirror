import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final CustomCardModel model;
  CustomCard({this.model});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        elevation: 1.0,
        child: Row(
          children: <Widget>[
            Image.asset(
              model.productImageUrl,
              width: 150.0,
            ),
            Expanded(
              child: Container(
                height: 150.0,
                padding: EdgeInsets.only(
                  left: 0.0,
                  right: 20.0,
                  bottom: 10.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      model.title,
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      model.subTitle,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Row(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "Rs " + model.price.toString() + "/-",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0),
                          ),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: FloatingActionButton(
                            onPressed: () {},
                            child: Icon(Icons.add),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCardModel {
  String id;
  String title;
  String subTitle;
  String productImageUrl;
  double price;

  CustomCardModel({
    this.id,
    this.title,
    this.subTitle,
    this.price,
    this.productImageUrl,
  });
}
