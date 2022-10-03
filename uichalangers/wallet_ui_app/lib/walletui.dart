
import 'package:flutter/material.dart';

class WalletUI extends StatefulWidget {

  @override
  State<WalletUI> createState() => _WalletUIState();
}

class _WalletUIState extends State<WalletUI> {
@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      // ignore: prefer_const_literals_to_create_immutables
      child: Column(children: [
          // 1. appbar
          // ignore: prefer_const_literals_to_create_immutables
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            // ignore: prefer_const_literals_to_create_immutables
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               //text
              Row(children: [
                 Text(
                "My ",
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                "Cards",
                style: const TextStyle(fontSize: 26),
                )
              ],),
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle
                ),
                child: Icon(Icons.add)) 
 

            ],),
          ),
          SizedBox(height: 25,)
          // 2. cards

          
          // 3. 3 buttons -> send ,pay, bills

          // 4. coulmn -> states, transactions

      ],),
    );
  }
}