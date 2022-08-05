import 'dart:developer';

import 'package:expense_app/models/transactions.dart';
import 'package:expense_app/widgets/BottomCard.dart';
import 'package:expense_app/widgets/TopCard.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(ExpenseAPP());
}

@override
class ExpenseAPP extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'expense app',
        home: Homepage());
  }
}

class Homepage extends StatelessWidget {
  final List<Transactions> transactions = [
    Transactions(
        id: "1", title: "Malayankunj", amount: 200.0, date: DateTime.now()),
    Transactions(id: "2", title: "KGF", amount: 250.0, date: DateTime.now()),
    Transactions(
        id: "3", title: "Mahaveeryar", amount: 256.0, date: DateTime.now()),
    Transactions(id: "4", title: "Pappan", amount: 150.0, date: DateTime.now()),
    Transactions(id: "4", title: "Pappan", amount: 150.0, date: DateTime.now()),
    Transactions(id: "4", title: "Pappan", amount: 150.0, date: DateTime.now()),
    Transactions(id: "4", title: "Pappan", amount: 150.0, date: DateTime.now()),
    Transactions(id: "4", title: "Pappan", amount: 150.0, date: DateTime.now()),
  ];
  String? TitleInput;
  double? amountInput;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("ExpenseAPP"), centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TopCard(),
            Card(
              margin: EdgeInsets.all(8),
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextField(
                      decoration: InputDecoration(labelText: "Title"),
                      onChanged: (value) => TitleInput = value,
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: "Amount"),
                      onChanged: (value) => amountInput = double.parse(value),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {
                          log("Amount : " + TitleInput.toString());
                          log("Title  : " + amountInput.toString());
                        },
                        child: Text("Add transaction"))
                  ],
                ),
              ),
            ),
            Container(
              height: 400,
              child: ListView(
                children: transactions.map((Tx) {
                  return BottomCard(Tr: Tx);
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
