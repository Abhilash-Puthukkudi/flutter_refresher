import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());  //basically runs the app .it takes the widget tree and draw something on the screen
}

class Myapp extends StatelessWidget {
  // class need to extend builtin classes such as Stateless widget / statefull widget
  Widget build(BuildContext context) {
    // build is a built in function that flutter will call . it will return a widget

    return MaterialApp(
      home: Text(
          "just a sample text"), //home is core widget that flutter bring into the screen
    );
  }
}
