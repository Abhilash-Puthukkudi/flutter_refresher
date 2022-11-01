

import 'package:flutter/material.dart';
import 'package:meals_app/screens/Favscreen/fav_screen.dart';
import 'package:meals_app/screens/categories/categories_screen.dart';
class BottomTabbarScreen extends StatefulWidget {
  const BottomTabbarScreen({Key? key}) : super(key: key);
  static const routeId = "bottomtabbarscreen";
  @override
  State<BottomTabbarScreen> createState() => _BottomTabbarScreenState();
}

class _BottomTabbarScreenState extends State<BottomTabbarScreen> {
 List pages =[
CategoriesScreen(),
FavScreen()
 ];
 int seectedpageindex=0;
  void selectPage(int index){
      setState(() {
        seectedpageindex = index;
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[seectedpageindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: seectedpageindex,
        onTap: selectPage,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.blue,        
        backgroundColor: Colors.yellow,
        items: [
         
          BottomNavigationBarItem(
            
            icon: Icon(Icons.category,),
            label: "category"
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite
                ),
                label: "Favorite"
                ),
                

        ],),
    );
  }
}