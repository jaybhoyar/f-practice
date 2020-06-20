import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("I am Rich"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image(
            image: NetworkImage(
                'https://images.squarespace-cdn.com/content/v1/5cfce28b8dc2800001e965b7/1562825261700-YJMMR31H4OJH5XTQRKOA/ke17ZwdGBToddI8pDm48kL2QOIl1zNSPYP8zvSlW8gVZw-zPPgdn4jUwVcJE1ZvWQUxwkmyExglNqGp0IvTJZUJFbgE-7XRK3dMEBRBhUpzu5X5PffHsrpf4FRYjM8Q9Xj6BpGU7dJG1fhv13AVG82aSTbXQqLJLELP1y0rxPis/1+flutter_blog-2-750x400-1.png'),
          ),
        ),
      ),
    ),
  );
}
