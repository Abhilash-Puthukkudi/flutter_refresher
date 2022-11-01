import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants.dart';
import 'package:tiktok_clone/views/widgets/text_input.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key}) : super(key: key);

  // TextEditing Controllrs
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Text(
                "TikTok Clone",
                style: TextStyle(
                  fontSize: 35,
                  color: buttonColor,
                  fontWeight: FontWeight.w900,
                ),
                ),
                const Text(
                "Login",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                ),
                ),
                const SizedBox(height:25),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(left: 20,right: 20),
                  child: TextInputField(isObscure: false, labelText: "Enter Your Email ID", icon: Icons.email, textEditingController: _usernameController)),
                const SizedBox(height:20),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(left: 20,right: 20),
                  child: TextInputField(isObscure: true, labelText: "Enter your password", icon: Icons.password, textEditingController: _passwordController))
                  ,
                  const SizedBox(height: 25,),
                  InkWell(
                    onTap: (){
                      log("clicked on login button");
                    },  
                    child: Container(
                      width: MediaQuery.of(context).size.width - 40,
                      height: 50,
                      decoration: BoxDecoration(
                                     color: buttonColor,
                                     borderRadius: const BorderRadius.all(Radius.circular(5))
                      ), 
                      child: Center(
                        child: Text(
                                      "Login",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700
                                      ),
                                      ),
                      ),
                  
                    ),
                  ),
                  const SizedBox(height: 25,),
                  //19.13 time

            ],
          ),
        ),
      ),
    ); 

  }
}

