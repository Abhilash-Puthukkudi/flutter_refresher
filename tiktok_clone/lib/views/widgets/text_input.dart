 import 'package:flutter/material.dart';
import 'package:tiktok_clone/constants.dart';

 class  TextInputField extends StatelessWidget {
   final TextEditingController textEditingController;
  final bool isObscure;
  final String labelText;
  final IconData icon;

  const TextInputField({super.key, required this.isObscure, required this.labelText, required this.icon, required this.textEditingController});

  @override
  Widget build(BuildContext context) {
    
    return TextField(
      controller: textEditingController , // textcontroller
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(icon), // icon  data
        labelStyle: const TextStyle(
          fontSize: 20
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: borderColor
          ),
        ),
        focusedBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: borderColor
          ),
        ),
      ),
      obscureText: isObscure, // obscure status

    );



  }
}