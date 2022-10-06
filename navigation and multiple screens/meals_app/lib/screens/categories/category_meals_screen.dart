import 'package:flutter/material.dart';
class CategoryMealsScreen extends StatelessWidget {

  // const CategoryMealsScreen({required this.categoryId,required this.categoryTitle,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)!.settings.arguments as Map;
      
      final String categoryId =routeArgs["id"];
    final String categoryTitle =routeArgs["title"];

      return Scaffold(
        appBar: AppBar(title:Text(categoryTitle),),
        body:const Center(
          child: Text("the recipe screen"
            
          ),
        ),
      );   
  }
}