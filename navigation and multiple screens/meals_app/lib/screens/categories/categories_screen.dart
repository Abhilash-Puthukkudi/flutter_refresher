import 'package:flutter/material.dart';
import 'package:meals_app/datas/dummy_data.dart';
import 'package:meals_app/screens/categories/widgets/categorie_item.dart';

class CategoriesScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return GridView(
      //look of the grid are defined here
      gridDelegate:  SliverGridDelegateWithMaxCrossAxisExtent(

        maxCrossAxisExtent: 200,
        childAspectRatio: 3/2,
        crossAxisSpacing: 0,
        mainAxisSpacing: 0,
        ),
       
      children: 
        DUMMY_CATEGORIES.map((e) => 
        CategorieItem(
          title: e.title, 
          color: e.color
          )
          ).toList()
      ,
    );

  }
}