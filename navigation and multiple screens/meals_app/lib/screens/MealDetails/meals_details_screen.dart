import 'package:flutter/material.dart';
class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({Key? key}) : super(key: key);
  static const routeId= "MealsDetailScreen";
  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      appBar: AppBar(title: const Text("Meals details Screen"),),
      body: Center(
        child: const Text("Meal details screen")
      ),
    );

  }
}

