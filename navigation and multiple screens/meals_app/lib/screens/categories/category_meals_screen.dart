import 'package:flutter/material.dart';
import 'package:meals_app/datas/dummy_data.dart';
import 'package:meals_app/screens/categories/widgets/category_meal_item.dart';
class CategoryMealsScreen extends StatelessWidget {
  static const  routeId = "categoryMealsScreen";
  // const CategoryMealsScreen({required this.categoryId,required this.categoryTitle,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)!.settings.arguments as Map;
      
      // accessing passed values from navigaotr
      final String categoryId =routeArgs["id"];
      final String categoryTitle =routeArgs["title"];
      
      // importting data list 
      final categorymeals = DUMMY_MEALS.where((meal) {
        return meal.categories.contains(categoryId);
      }).toList() ;



      return Scaffold(
        appBar: AppBar(title:Text(categoryTitle),),
        body:
        ListView.builder(itemBuilder: (context,index){
          return MealItem(
            title: categorymeals[index].title,
            id: categorymeals[index].id, 
            imageUrl: categorymeals[index].imageUrl, 
            duration: categorymeals[index].duration,
            complexity: categorymeals[index].complexity,
            affordability: categorymeals[index].affordability
          );
        },
        itemCount: categorymeals.length,
        ),
      );   
  }
}