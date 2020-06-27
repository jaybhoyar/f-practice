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
        backgroundColor: Colors.teal.shade600,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('images/profile.png'),
                  ),
                  Text(
                    'Jay Bhoyar',
                    style: TextStyle(
                      fontSize: 35.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Pacifico',
                    ),
                  ),
                  Text(
                    'FULL STACK DEVELOPER',
                    style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.8,
                      color: Colors.teal.shade100,
                      fontWeight: FontWeight.bold,
                      // fontFamily: 'Pacifico',
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    width: 300,
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.phone,
                          color: Colors.teal,
                        ),
                        SizedBox(
                          width: 15.0,
                        ),
                        Text(
                          '+91 727 612 9866',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                            color: Colors.teal.shade900,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    width: 300,
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.email,
                          color: Colors.teal,
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'jaybhoyar1997@gmail.com',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                            color: Colors.teal.shade900,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
