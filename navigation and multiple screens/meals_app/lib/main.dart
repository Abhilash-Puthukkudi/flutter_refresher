import 'package:flutter/material.dart';
import 'package:meals_app/screens/MealDetails/meals_details_screen.dart';
import 'package:meals_app/screens/categories/categories_screen.dart';
import 'package:meals_app/screens/categories/category_meals_screen.dart';
import 'package:meals_app/screens/tabs/bottom_tabs.dart';
import 'package:meals_app/screens/tabs/tabs_screen.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Meals App",
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink)
              .copyWith(secondary: Colors.amber),
          canvasColor: Color.fromARGB(255, 242, 242, 237),
          fontFamily: "Raleway",
        ),
        initialRoute: BottomTabbarScreen.routeId,
        routes: {
          BottomTabbarScreen.routeId:(context) => BottomTabbarScreen(),
          TabScreen.routeID: (context) => TabScreen(),
          CategoriesScreen.routeId: (context) => CategoriesScreen(),
          CategoryMealsScreen.routeId: (context) => CategoryMealsScreen(),
          MealDetailScreen.routeId:(context) =>  MealDetailScreen()
        });
  }
}

class homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Meals APP"),
        ),
        body: CategoriesScreen());
  }
}
