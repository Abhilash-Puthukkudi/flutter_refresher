import 'package:flutter/material.dart';
import 'package:meals_app/datas/dummy_data.dart';
class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({Key? key}) : super(key: key);
  static const routeId= "MealsDetailScreen";

// Heading widget 

  Widget buildSectionTile(BuildContext context,String text){
    return  Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: Text(text.toString(),
          style: TextStyle(
            fontSize: 22,
          ),
            )
          ,
        ) ;
        
    
  }


  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments;
    final selected_meal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId );  
    return Scaffold(
      appBar: AppBar(title:  Text(selected_meal.title.toString()),),
      // ignore: prefer_const_constructors
      body: SingleChildScrollView(
        child: Column(
          children: [
            // image container
            Container(
              height:300,
              width:double.infinity,
              child: Image.network(
                                    selected_meal.imageUrl,
                                    fit: BoxFit.cover,
      
                                    ),
              
            )
          ,
          // heading 
         buildSectionTile(context, "Ingrediatns"),
          
          // Listview
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                                color: Colors.redAccent,
                                width: 1.5,
                              
                                ),
                                
            ),
            height: 240,width: 300,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: ListView.builder(
              itemCount: selected_meal.ingredients.length
              ,itemBuilder: (context, index) {
              return Card(
                 
                color: Theme.of(context).accentColor,
                
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(selected_meal.ingredients[index]),
              ),);
            }))
              //steps to create the dish
            ,buildSectionTile(context, "Steps"),
      
              Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                                color: Colors.redAccent,
                                width: 1.5,
                              
                                ),
                                
            ),
            height: 240,width: 300,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child:ListView.separated(
              separatorBuilder: (context, index) => Divider(color: Colors.redAccent,height: 2),
              itemBuilder: ((context, index) => ListTile(
              leading: CircleAvatar(child: Text("#${index+1}")),
              title: Text(selected_meal.steps[index].toString()),
            )
            
            ),
            
            itemCount: selected_meal.steps.length,
            )
            )          
      
          ]   
            ),
      ),
        
        
    
    );

  }
}

