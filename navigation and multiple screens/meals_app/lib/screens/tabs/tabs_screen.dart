import 'package:flutter/material.dart';
import 'package:meals_app/screens/Favscreen/fav_screen.dart';
import 'package:meals_app/screens/categories/categories_screen.dart';
class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);
static const routeID = "TabsScreen";
  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {

return DefaultTabController(
  initialIndex: 0,
  length: 2,
   child: Scaffold(
      appBar: AppBar(title: Text("tab bar "),
      bottom: TabBar(tabs: [
        Tab(
           icon: Icon(Icons.category), 
        text: "CAtegories",
        ),
        Tab(
           icon: Icon(Icons.star),
           text: "Favoraite", 

        )],),
   ),
   body: TabBarView(children: [
    CategoriesScreen(),
    FavScreen()

   ]),
   )
   
   );   
  }
}