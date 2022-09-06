import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class datescreen extends StatefulWidget {
  const datescreen({Key? key}) : super(key: key);

  @override
  State<datescreen> createState() => _datescreenState();
}

class _datescreenState extends State<datescreen> {
  DateTime? selecteDate;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Application"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(20),
        color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              selecteDate == null ? "Selected date" : selecteDate.toString(),
              style: TextStyle(fontSize: 30),
            ),
            TextButton(
                onPressed: () {
                  selectdate();
                },
                child: Text("choose a date"))
          ],
        ),
      ),
    );
  }

  void selectdate() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1999),
            lastDate: DateTime.now())
        .then((sdate) {
      if (sdate == null) {
        return;
      }
      setState(() {
        
        selecteDate = sdate;
      });
    });
  }
}
