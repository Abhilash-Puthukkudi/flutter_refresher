import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Ui extends StatelessWidget {
  const Ui({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: 
  AppBar(
          title: Text("Whatsapp"),
          centerTitle: false,
          elevation: 0,
          ),
body: Column(

  children: [
    Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,      
      children: [
 
           Container(
          padding: EdgeInsets.all(20),
          color: Colors.green,
          child: Text("Camera",
          style: TextStyle(color: Colors.white, fontSize: 18) 
          ,),
        ),
        Container(
          padding: EdgeInsets.all(20),
          color: Colors.green,
          child: Text("Camera",
          style: TextStyle(color: Colors.white, fontSize: 18) 
          ,),
        ),
        Container(
          padding: EdgeInsets.all(20),
          color: Colors.green,
          child: Text("Camera",
          style: TextStyle(color: Colors.white, fontSize: 18) 
          ,),
        ),
        ],
        
       
        
      
    )
  ],
),          
        
      
    
    );
  }
}