// ignore_for_file: deprecated_member_use

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:quizapp/Question.dart';
import 'package:quizapp/answer.dart';

void main() {
  runApp(
      Myapp()); //basically runs the app .it takes the widget tree and draw something on the screen
}
// alternative syntax
// void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  // class need to extend builtin classes such as Stateless widget / statefull widget

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyappState();
  }
}

class _MyappState extends State<Myapp> {
  var _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      if (_questionIndex == 2) {
        _questionIndex = _questionIndex - 2;
      } else {
        _questionIndex = _questionIndex + 1;
      }
    });

    log(_questionIndex.toString());
  }

  @override
  Widget build(BuildContext context) {
    // build is a built in function that flutter will call . it will return a widget

    var questions = [
      {
        "QuestionText": "who is your fav actor?",
        "Answers": ["MOHANLAL", "MAMMOOTTY", "RAJANI"]
      },
      {
        "QuestionText": "who is your fav singer?",
        "Answers": ["ANIRUTH", "VIJAY", "SIMBU"]
      },
      {
        "QuestionText": "what is your pet?",
        "Answers": ["DOG", "CAT", "BIRD"]
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("basics app"),
        ),
        body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Question(
              question: questions[_questionIndex]['QuestionText'].toString(),
            ),
            ...(questions[_questionIndex]['Answers'] as List).map((answer) {
              return Answer(
                onpressed: answerQuestion,
                buttonText: answer,
              );
            }).toList(),
          ],
        ),
      ),
      //home is core widget that flutter bring into the screen
    );
  }
}

// points to remember
// main function automatically executes when app launches
// the fucntion runApp() inside the main (provided by the material.dart) take a widget and draw into the screen
// @override is called decorator 
// it simply calls the build() method inside the class which is extended by Stateless/Statefull widget class
// that will return a material app widget  
