import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CategorieItem extends StatelessWidget {
  
  final String title;
  final Color color;
  
  const CategorieItem({required this.title,required this.color,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return Container(
          margin: EdgeInsets.all(10),
          padding: const EdgeInsets.all(15),
          child: Center(
                        child: Text(
                                    title,
                                    style: TextStyle(fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w200
                                    ),
                                    
                                    )),
          decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [color.withOpacity(0.7),color],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight
                      ),
          borderRadius: BorderRadius.circular(15)
          ),
        );   
  }
}