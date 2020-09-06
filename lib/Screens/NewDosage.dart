import "package:flutter/material.dart";
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:pill_reminder/Utils/Colors.dart';

class NewDosage extends StatefulWidget {
  @override
  _NewDosageState createState() => _NewDosageState();
}

class _NewDosageState extends State<NewDosage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPallete.primaryColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Expanded(
                flex: 1,
                child: Center(child: Icon(MaterialIcons.arrow_back, size: 22))),
            Expanded(
              flex: 20,
              child: Center(
                  child: Text(
                "Dosage",
                style: TextStyle(fontSize: 25),
              )),
            ),
            Expanded(flex: 1, child: Container())
          ],
        ),
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: Colors.white),
      ),
    );
  }
}
