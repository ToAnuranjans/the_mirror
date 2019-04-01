import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';

import './placeholder.dart';

import '../models/user.dart';

class WelcomePage extends StatefulWidget {
  final Widget child;

  WelcomePage({Key key, this.child}) : super(key: key);

  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<User>>(
      future: _getUsers(),
      builder: (BuildContext context, AsyncSnapshot<List<User>> snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.active:
          case ConnectionState.waiting:
            return CircularProgressIndicator(
              backgroundColor: Colors.deepOrange,
            );
            break;
          case ConnectionState.done:
            print(snapshot.data);
            print("object");

            return PlaceHolderPage(
              title: "The Mirror",
            );
          default:
        }
      },
    );
  }

  Future<List<User>> _getUsers() async {
    String filePath = "assets/data/users.json";

    try {
      var response = await DefaultAssetBundle.of(context).loadString(filePath);
      final List<dynamic> users = json.decode(response);
      var userList = users.map((user) => User.fromJson(user)).toList();
      return userList;
    } catch (e) {
      print(e);
      throw e;
    }
  }
}
