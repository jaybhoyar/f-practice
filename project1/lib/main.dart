import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer choose');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My first App"),
          ),
          body: Column(
            children: <Widget>[
              Text("The question jhbh"),
              RaisedButton(
                child: Text("option 1"),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text("option 2"),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text("option 3"),
                onPressed: answerQuestion,
              ),
            ],
          )),
    );
  }
}
