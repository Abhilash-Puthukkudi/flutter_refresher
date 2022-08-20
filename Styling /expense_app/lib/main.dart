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
        theme: ThemeData(
          textTheme: ThemeData.light().textTheme.copyWith(
              titleLarge: TextStyle(fontFamily: "Quicksand", fontSize: 18)),
          appBarTheme: AppBarTheme(
              textTheme: ThemeData.light()
                  .textTheme
                  .copyWith(headline1: TextStyle(fontFamily: 'OpenSans'))),
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepOrange)
              .copyWith(secondary: Colors.purple),
        ),
        debugShowCheckedModeBanner: false,
        title: 'expense app',
        home: Homepage());
  }
}

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<Transactions> transactions = [
    Transactions(
        id: "1", title: "Malayankunj", amount: 200.0, date: DateTime.now()),
    Transactions(id: "2", title: "KGF", amount: 250.0, date: DateTime.now()),
    Transactions(
        id: "3", title: "Mahaveeryar", amount: 256.0, date: DateTime.now()),
    Transactions(id: "4", title: "Pappan", amount: 150.0, date: DateTime.now()),
  ];

  String? TitleInput;

  double? amountInput;

  void addToTransactions(String title, double amount) {
    Transactions transaction = Transactions(
        amount: amount,
        title: title,
        date: DateTime.now(),
        id: DateTime.now().toString());

    setState(() {
      transactions.add(transaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ExpenseAPP",
          style: TextStyle(fontFamily: "quicksand"),
        ),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
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
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(labelText: "Amount"),
                      onChanged: (value) => amountInput = double.parse(value),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {
                          addToTransactions(
                              TitleInput!.toString(), amountInput!.toDouble());
                        },
                        child: Text("Add transaction"))
                  ],
                ),
              ),
            ),
            Container(
              height: 324,
              child: ListView.builder(
                itemBuilder: ((context, index) {
                  return BottomCard(Tr: transactions[index]);
                }),
                itemCount: transactions.length,
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          startAddnewTransaction();
        },
      ),
    );
  }

  void startAddnewTransaction() {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            child: Card(
              shadowColor: Colors.black,
              color: Colors.grey,
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
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(labelText: "Amount"),
                      onChanged: (value) => amountInput = double.parse(value),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextButton(
                        onPressed: () {
                          addToTransactions(
                              TitleInput!.toString(), amountInput!.toDouble());

                          Navigator.of(context).pop();
                        },
                        child: Text(
                          "Add transaction",
                          style: Theme.of(context).textTheme.titleLarge,
                        ))
                  ],
                ),
              ),
            ),
          );
        });
  }
}
