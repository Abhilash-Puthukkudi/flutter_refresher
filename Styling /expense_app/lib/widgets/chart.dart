import 'dart:developer';

import 'package:expense_app/main.dart';
import 'package:expense_app/models/transactions.dart';
import 'package:expense_app/widgets/ChartBar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Chart extends StatefulWidget {
  final List<Transactions> recentTransactions;

  List<Map<String, Object>> get groupedtransactionValues {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(Duration(days: index));
      double totalsum = 0.0;

      for (var i = 0; i < recentTransactions.length; i++) {
        if (recentTransactions[i].date!.day == weekDay.day &&
            recentTransactions[i].date!.month == weekDay.month &&
            recentTransactions[i].date!.year == weekDay.year) {
          totalsum += recentTransactions[i].amount!;
        }
      }
      return {
        'day': DateFormat.E().format(weekDay).substring(0, 1),
        'amount': totalsum
      };
    }).reversed.toList();
  }

  double get maxspending {
    return groupedtransactionValues.fold(0.0, (sum, item) {
      return sum + double.parse(item['amount'].toString());
    });
  }

  const Chart({Key? key, required this.recentTransactions}) : super(key: key);

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  @override
  Widget build(BuildContext context) {
    log(widget.groupedtransactionValues.toString());
    return Container(
      height:
          (MediaQuery.of(context).size.height - appbar.preferredSize.height) *
              0.54,
      child: Card(
        elevation: 6,
        margin: const EdgeInsets.all(20),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: widget.groupedtransactionValues.map((data) {
              return Flexible(
                fit: FlexFit.tight,
                flex: 2,
                child: ChartBar(
                    data["day"].toString(),
                    double.parse(data["amount"].toString()),
                    widget.maxspending == 0.0
                        ? 0.0
                        : (double.parse(data["amount"].toString()) /
                            widget.maxspending.toDouble())),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
