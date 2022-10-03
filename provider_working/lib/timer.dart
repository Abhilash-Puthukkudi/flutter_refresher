import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:provider_working/timer_info.dart';

class Timmer extends StatefulWidget {
  const Timmer({Key? key}) : super(key: key);

  @override
  State<Timmer> createState() => _TimmerState();
}

class _TimmerState extends State<Timmer> {
  @override
  void initState() {

    Timer.periodic(Duration(seconds:1 ), (timer) {
      var timerinfo = Provider.of<TimerInfo>(context,listen: false);
      timerinfo.updateRemainigtime();
     });


  }

  
  @override
  Widget build(BuildContext context) {
      

    return Center(
        child: 
        Consumer<TimerInfo>(builder: (context, value, child) {
          return Text(
          value.getReminingtime().toString()
          ,style: TextStyle(
            fontSize: 58,
            fontWeight: FontWeight.bold,
          ),
          );
        })
      );

  }
}

