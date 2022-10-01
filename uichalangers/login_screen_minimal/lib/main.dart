import 'package:flutter/material.dart';

import 'login_ui.dart';

void main(){
runApp(LoginMain());
}

class LoginMain extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        home: LoginUI(),
        debugShowCheckedModeBanner: false,
        
      );
  }
}