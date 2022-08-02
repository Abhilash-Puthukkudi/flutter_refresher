import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final void Function()? onpressed;
  final String buttonText;
  Answer({Key? key, required this.onpressed, required this.buttonText})
      : super(key: key);
  @override
  build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.pinkAccent)),
        onPressed: onpressed, // pointing at the function not executing it
        child: Text(
          style: TextStyle(color: Colors.yellow),
          buttonText,
        ),
      ),
    );
  }
}
