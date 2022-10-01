import 'dart:developer';
import 'dart:ffi';

import 'package:expense_app/models/transactions.dart';
import 'package:expense_app/widgets/BottomCard.dart';
import 'package:expense_app/widgets/TopCard.dart';
import 'package:expense_app/widgets/chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations( [DeviceOrientation.portraitUp,DeviceOrientation.portraitDown]);
  runApp(ExpenseAPP());
}

final appbar = AppBar(
  title: Text(
    "ExpenseAPP",
    style: TextStyle(fontFamily: "quicksand"),
  ),
  centerTitle: true,
  actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
);

@override
class ExpenseAPP extends StatelessWidget {
  const ExpenseAPP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          textTheme: ThemeData.light().textTheme.copyWith(
              titleLarge:
                  const TextStyle(fontFamily: "Quicksand", fontSize: 18)),
          appBarTheme: AppBarTheme(
              toolbarTextStyle: ThemeData.light()
                  .textTheme
                  .copyWith(headline1: const TextStyle(fontFamily: 'OpenSans'))
                  .bodyText2,
              titleTextStyle: ThemeData.light()
                  .textTheme
                  .copyWith(headline1: const TextStyle(fontFamily: 'OpenSans'))
                  .headline6),
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepOrange)
              .copyWith(secondary: Colors.deepOrangeAccent),
        ),
        debugShowCheckedModeBanner: false,
        title: 'expense app',
        home: Homepage());
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<Transactions> transactions = [
    // Transactions(
    //     id: "1", title: "Malayankunj", amount: 200.0, date: DateTime.now()),
    // Transactions(id: "2", title: "KGF", amount: 250.0, date: DateTime.now()),
    // Transactions(
    //     id: "3", title: "Mahaveeryar", amount: 256.0, date: DateTime.now()),
    // Transactions(id: "4", title: "Pappan", amount: 150.0, date: DateTime.now()),
  ];

  // ignore: non_constant_identifier_names
  String? TitleInput;
  DateTime? SelectedDate;

  double? amountInput;
  List<Transactions> get _recentTransactions {
    return transactions.where((tx) {
      return tx.date!.isAfter(DateTime.now().subtract(const Duration(days: 7)));
    }).toList();
  }

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

  void _presentDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2019),
            lastDate: DateTime.now())
        .then((date) {
      if (date == null) {
        return;
      }

      setState(() {
        SelectedDate = date;
        log(SelectedDate.toString());
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: appbar,
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Text("Show chart : "),
                Switch(value: true, onChanged: null)
              ],
            )
            ,
            Chart(recentTransactions: _recentTransactions),
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
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
              color: Colors.white,
              margin: EdgeInsets.all(2),
              child: Container(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 210,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      Row(
                        children: [
                          Text(SelectedDate == null
                              ? 'No Date Choosen'
                              : DateFormat("dd MMM yyyy")
                                  .format(SelectedDate as DateTime)),
                          TextButton(
                              onPressed: () {
                                _presentDatePicker();
                              },
                              child: Text(
                                "Select Date",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                      TextButton(
                          onPressed: () {
                            addToTransactions(TitleInput!.toString(),
                                amountInput!.toDouble());

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
            ),
          );
        });
  }
}
