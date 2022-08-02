// ignore: file_names
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String? question;
  const Question({Key? key, this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(50),
      child: Text(
        question.toString(),
        style: const TextStyle(
          fontSize: 30,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
