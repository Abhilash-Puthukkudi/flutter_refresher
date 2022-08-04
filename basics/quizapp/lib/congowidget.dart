import 'package:flutter/material.dart';

import 'Question.dart';

class congowidget extends StatelessWidget {
  final VoidCallback resetButon;
  const congowidget({
    Key? key,
    required this.resetButon,
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
        child: Column(
      children: [
        Question(
          question: resultPharse,
        ),
        Container(
          width: 100,
          height: 35,
          child: ElevatedButton(
            onPressed: resetButon,
            child: Text("Rest Quiz"),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red)),
          ),
        )
      ],
    ));
  }
}
