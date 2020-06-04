import 'package:flutter/material.dart';
import 'package:wordpair/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Cocktail",
        theme: ThemeData(primarySwatch: Colors.indigo),
        home: HomePage());
  }
}
