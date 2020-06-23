import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white70,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 30.0),
              Container(
                height: 100.0,
                color: Colors.orange[600],
                child: Text("Hello"),
              ),
              SizedBox(height: 30.0),
              Container(
                height: 100.0,
                color: Colors.white,
                child: Text("Hello"),
              ),
              SizedBox(height: 30.0),
              Container(
                height: 100.0,
                color: Colors.green,
                child: Text("Hello"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
