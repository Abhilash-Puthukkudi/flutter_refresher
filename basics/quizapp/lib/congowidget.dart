import 'package:flutter/material.dart';

import 'Question.dart';

class congowidget extends StatelessWidget {
  const congowidget({
    Key? key,
  }) : super(key: key);

  String get resultPharse {
    var resultPharse = "you did it";
    if (5 > 20) {
      resultPharse = "not bad";
    } else {
      resultPharse = "Oh no";
    }
    return resultPharse;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Question(
      question: resultPharse,
    ));
  }
}
