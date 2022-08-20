import 'package:expense_app/models/transactions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

class BottomCard extends StatelessWidget {
  final Transactions Tr;
  const BottomCard({Key? key, required this.Tr}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,
        margin: EdgeInsets.all(4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.greenAccent,
                  width: 2,
                ),
              ),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Text(
                '₹' + Tr.amount.toString(),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Theme.of(context).primaryColorDark),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Tr.title.toString(),
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(DateFormat("dd MMM yyyy").format(Tr.date as DateTime),
                    style: TextStyle(color: Colors.grey))
              ],
            )
          ],
        ));
  }
}
