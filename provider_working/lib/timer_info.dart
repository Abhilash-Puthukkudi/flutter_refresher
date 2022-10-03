import 'package:flutter/material.dart';

class TimerInfo extends ChangeNotifier
{
  late int _reminingtime = 60;

  int getReminingtime()=> _reminingtime;

  updateRemainigtime(){
    _reminingtime--;
   notifyListeners();
  }
}