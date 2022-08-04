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
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      height: 50,
      child: OutlinedButton(
        // style: ButtonStyle(
        //     backgroundColor: MaterialStateProperty.all(Colors.green),
        //     foregroundColor: MaterialStateProperty.all(Colors.black)),
        style: ElevatedButton.styleFrom(
            onPrimary: Colors.green, side: BorderSide(color: Colors.green)),
        onPressed: onpressed, // pointing at the function not executing it
        child: Text(
          buttonText,
        ),
      ),
    );
  }
}
