import 'package:flutter/material.dart';
import 'package:wallet_ui_app/walletui.dart';

void main(){
  runApp(WalletApp());
}

class WalletApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home:Scaffold(
        backgroundColor: Colors.grey[300],
          body: WalletUI(),
      ) ,
    );
  }
}

