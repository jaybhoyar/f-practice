import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan[400],
        appBar: AppBar(
          title: Text("I am Poor"),
          backgroundColor: Colors.teal[800],
        ),
        body: Center(
          child: Image(
            image: NetworkImage(
                'https://webstockreview.net/images/coal-clipart-1.png'),
          ),
        ),
      ),
    ),
  );
}
