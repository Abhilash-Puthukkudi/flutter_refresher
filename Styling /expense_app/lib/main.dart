import 'package:expense_app/models/transactions.dart';
import 'package:expense_app/widgets/BottomCard.dart';
import 'package:expense_app/widgets/TopCard.dart';
import 'package:flutter/material.dart';

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
        id: "1", title: "Wedding", amount: 2000.0, date: DateTime.now()),
    Transactions(id: "2", title: "Show", amount: 1500.0, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("ExpenseAPP"), centerTitle: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TopCard(),
          Column(
            children: transactions.map((Tx) {
              return Card(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.greenAccent,
                            width: 2,
                          ),
                        ),
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        child: Text(
                          Tx.amount.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.greenAccent),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Tx.title.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(Tx.date.toString(),
                              style: TextStyle(color: Colors.grey))
                        ],
                      )
                    ],
                  ));
            }).toList(),
          )
        ],
      ),
    );
  }
}
