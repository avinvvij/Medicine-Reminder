import "package:flutter/material.dart";
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:pill_reminder/Utils/Colors.dart';

class NewDosage extends StatefulWidget {
  @override
  _NewDosageState createState() => _NewDosageState();
}

class _NewDosageState extends State<NewDosage> {
  int dosageNumber = 1;

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
                child: Center(
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(MaterialIcons.arrow_back, size: 22)))),
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
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Container(
          padding: EdgeInsets.only(
            top: 20,
            left: 16,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: AppPallete.primaryColor,
                        borderRadius: BorderRadius.circular(80)),
                    child: Icon(
                      MaterialIcons.remove,
                      color: AppPallete.textColor,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    constraints: BoxConstraints(maxWidth: 120, maxHeight: 50),
                    child: TextField(
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(0),
                          hintText: "No",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: AppPallete.primaryColor,
                        borderRadius: BorderRadius.circular(80)),
                    child: Icon(
                      MaterialIcons.add,
                      color: AppPallete.textColor,
                    ),
                  ),
                ],
              )
            ],
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Colors.white),
        ),
      ),
    );
  }
}
