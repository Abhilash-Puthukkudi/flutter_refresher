import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants.dart';
import 'package:tiktok_clone/views/screens/auth/login_screen.dart';
void main() {
  runApp(TikTok_app());
}

class TikTok_app extends StatelessWidget {
  const TikTok_app({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor
      ),
      home: LoginScreen(),

    );

  }
}

