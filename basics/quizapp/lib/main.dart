// ignore_for_file: deprecated_member_use

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:quizapp/Question.dart';
import 'package:quizapp/answer.dart';
import 'package:quizapp/answsers.dart';

import 'congowidget.dart';

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
      _questionIndex = _questionIndex + 1;
    });
  }

  void questionReset() {
    setState(() {
      _questionIndex = 0;
    });
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
          body: _questionIndex <= 2
              ? Quiz(
                  questionIndex: _questionIndex,
                  answerQuestion: answerQuestion,
                  questions: questions)
              : congowidget(
                  resetButon: questionReset,
                )),
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
// ... spred operator
// {} named arguments
// 