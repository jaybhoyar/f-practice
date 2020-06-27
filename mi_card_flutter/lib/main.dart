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
                  backgroundColor: Colors.red,
                  child: Image(
                    image: AssetImage('images/profile.png'),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
