import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories/categories_screen.dart';

void main() {
  runApp(Myapp());
}


class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Meals App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      
      ),
      home: homescreen() ,
      
    );
    
  }
}

class homescreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return Scaffold

(body: CategoriesScreen());

  }
}