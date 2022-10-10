import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories/category_meals_screen.dart';

class CategorieItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const CategorieItem(
      {required this.id, required this.title, required this.color, Key? key})
      : super(key: key);

  void selctCategory(context) {
    //pushing a new page into screen
    // Navigator.of(context).push(
    //     MaterialPageRoute(
    //       builder:(_){
    //         return CategoryMealsScreen(categoryId: id,categoryTitle: title,);
    //       }

    //         )
    //         );

    Navigator.of(context).pushNamed(CategoryMealsScreen.routeId,
        arguments: {'id': id, 'title': title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selctCategory(context),
      //ripple effect for clicks
      splashColor: color,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        // margin: EdgeInsets.all(10),
        padding: const EdgeInsets.all(15),
        // ignore: sort_child_properties_last
        child: Center(
            child: Text(
          title,
          style: const TextStyle(
              fontSize: 18, 
              color: Colors.white, 
              fontWeight: FontWeight.w200
               ),
        )),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color.withOpacity(0.7), color],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
