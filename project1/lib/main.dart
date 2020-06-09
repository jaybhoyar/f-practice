import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color ?',
      'What\'s your favourite animal ?',
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My first App"),
          ),
          body: Column(
            children: [
              Text(questions[questionIndex]),
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
