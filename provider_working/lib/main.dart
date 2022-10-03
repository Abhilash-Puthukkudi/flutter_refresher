import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_working/timer.dart';
import 'package:provider_working/timer_info.dart';

 void main() {
  runApp(SecondsAPP());
}

class SecondsAPP extends StatelessWidget{
  var _seconds=60;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(

      body: ChangeNotifierProvider(
       create: (context) => TimerInfo(),
        child: Timmer()
        ))
      
      

       );
    
  }
}