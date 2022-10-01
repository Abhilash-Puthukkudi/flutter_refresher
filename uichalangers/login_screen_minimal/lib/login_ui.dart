import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginUI extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
        return  Scaffold(
          body: 
          SafeArea(
            child: Center(

              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
          
                    Icon(Icons.phone_android_sharp,size: 100,),
                  // hello again
                  SizedBox(height: 35,),
 Text(
                    "Hello Again!",
                 style: GoogleFonts.bebasNeue(fontSize: 56),
                  ),
                    const SizedBox(height: 10,),
                  const Text(
                    "Welcome back, You've been missed ", 
                    style: TextStyle(

                      fontSize: 20
                      ),
                  ),
                  const SizedBox(height: 50,),
                  //email
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0 ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color:Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      // ignore: prefer_const_constructors
                      child: Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: "Email",
                              border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height:10 ,),
                  // password
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0 ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color:Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      // ignore: prefer_const_constructors
                      child: Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Password",
                              border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  //sigin in button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.deepPurple
                      ),
                      child: Center(child: Text(
                        "Sign In",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                        )),
                    ),
                  ),
                  SizedBox(height: 25,),
                  //forgot password
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text("Not a Member?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )
                    
                      ),
                    Text(
                      "Register Now",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent),
                    )
                    ],)
                ],
              ),
            ),
          )
        );
  }
}