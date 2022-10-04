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
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink).copyWith(secondary: Colors.amber),
       canvasColor: Color.fromARGB(255, 242, 242, 237),
       fontFamily: "Raleway",
       

      ),
      home: homescreen() ,
      
    );
    
  }
}

class homescreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return Scaffold

(appBar: AppBar(title: Text("Meals APP"),),
  body: CategoriesScreen());

  }
}