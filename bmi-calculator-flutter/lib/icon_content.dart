import 'package:flutter/material.dart';
import 'constants.dart';

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
        Text(gender, style: labelTextStyle),
      ],
    );
  }
}
