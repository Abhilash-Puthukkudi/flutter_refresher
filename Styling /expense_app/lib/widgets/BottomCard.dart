import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomCard extends StatelessWidget {
  const BottomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(16),
      child: Container(
          height: 100,
          // width: double.infinity,
          child: Text("List of items")),
    );
  }
}
