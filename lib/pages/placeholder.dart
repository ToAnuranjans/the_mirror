import 'package:flutter/material.dart';

import './home.dart';
import './category.dart';
import './profile.dart';

class PlaceHolderPage extends StatefulWidget {
  final String title;
  PlaceHolderPage({this.title});

  _PlaceHolderPageState createState() => _PlaceHolderPageState();
}

class _PlaceHolderPageState extends State<PlaceHolderPage> {
  int _currentIndex = 0;

  List<Widget> _pages = [HomePage(), CategoryPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _pages[_currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text("Category"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            title: Text("Profile"),
          )
        ],
      ),
    );
  }
}
