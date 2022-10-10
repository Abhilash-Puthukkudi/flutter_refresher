import 'package:flutter/material.dart';
import 'package:whatsapp_screen/home_screen.dart';

 main() {
  runApp(Root());
  
}

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Ui(),
      theme: ThemeData(
        primarySwatch:Colors.green
      ),
    ); 
  }
}