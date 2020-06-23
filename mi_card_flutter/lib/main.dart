import 'package:flutter/material.dart';
import 'challenge.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Challenge();
    // home: Scaffold(
    //   backgroundColor: Colors.white70,
    //   body: SafeArea(
    //     child: Row(
    //       crossAxisAlignment: CrossAxisAlignment.stretch,
    //       children: <Widget>[
    //         SizedBox(height: 30.0),
    //         Container(
    //           width: 80.0,
    //           color: Colors.orange[600],
    //           child: Text("Hello"),
    //         ),
    //         SizedBox(height: 30.0),
    //         Container(
    //           width: 50.0,
    //           color: Colors.white,
    //           child: Text("Hello"),
    //         ),
    //         SizedBox(height: 30.0),
    //         Container(
    //           width: 50.0,
    //           color: Colors.green,
    //           child: Text("Hello"),
    //         ),
    //       ],
    //     ),
    //   ),
    // ),
  }
}
