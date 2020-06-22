import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink,
        body: SafeArea(
          child: Container(
            height: 100.0,
            width: 100.0,
            margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
            padding: EdgeInsets.all(20.0),
            color: Colors.white,
            child: Text("Hello"),
          ),
        ),
      ),
    );
  }
}
