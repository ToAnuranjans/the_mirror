import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './pages/placeholder.dart';
import './pages/home.dart';
import './pages/product_list.dart';
import './pages/profile.dart';
import './pages/welcome.dart';
import './pages/products.dart';
import './pages/prodcuts.detail.dart';
import './widgets/custom_card.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TheMirror',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          backgroundColor: Colors.orangeAccent,
          fontFamily: "Verdana",
        ),
        routes: {
          "/home": (BuildContext context) => HomePage(),
          "/category": (BuildContext context) => ProductListPage(),
          "/profile": (BuildContext context) => ProfilePage(),
          "/products": (BuildContext context) => ProfilePage(),
        },
        home: ProductDetailsPage());
  }
}
