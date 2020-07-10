import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.gender});
  final IconData icon;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 70.0,
          color: Colors.white,
        ),
        SizedBox(height: 10.0),
        Text(
          gender,
          style: TextStyle(
            fontSize: 17.0,
            color: Color(0xFF8D8E98),
          ),
        ),
      ],
    );
  }
}
