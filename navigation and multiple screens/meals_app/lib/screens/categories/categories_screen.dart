import 'package:flutter/material.dart';
import 'package:meals_app/datas/dummy_data.dart';
import 'package:meals_app/screens/categories/widgets/categorie_item.dart';

class CategoriesScreen extends StatelessWidget{
  static const routeId ="categorysScreen";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // appBar: AppBar(title: Text("Meals App"),),
      
      body: SafeArea(
        child: GridView(
          //look of the grid are defined here
          padding: const EdgeInsets.all(20),
          gridDelegate:  const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3/2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            ),
           
          children: 
            DUMMY_CATEGORIES.map((e) => 
            CategorieItem(
              id: e.id,
              title: e.title, 
              color: e.color 
              )
              ).toList()
          ,
        ),
      ),
    );

  }
}