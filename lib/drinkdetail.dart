import "package:flutter/material.dart";

class DrinkDetail extends StatelessWidget {
  final drink;

  const DrinkDetail({Key key, this.drink}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Drink Detail")),
    );
  }
}
