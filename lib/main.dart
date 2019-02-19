import 'package:flutter/material.dart';

import './pages/placeholder.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TheMirror',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PlaceHolderPage(title: 'TheMirror'),
    );
  }
}
