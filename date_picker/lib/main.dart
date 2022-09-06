import 'package:date_picker/screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DatePickerMyapp());
}

class DatePickerMyapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: datescreen(),
    );
  }
}
