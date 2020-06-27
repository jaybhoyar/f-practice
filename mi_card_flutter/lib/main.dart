import 'package:flutter/material.dart';
// import 'challenge.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/profile.png'),
                // height: 50.0,
                // width: 50.0,
              ),
              Text(
                'Jay Bhoyar',
                style: TextStyle(
                  fontSize: 34.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
