import "package:flutter/material.dart";
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:pill_reminder/CommonModules/PRDayPicker.dart';
import 'package:pill_reminder/Utils/Colors.dart';

class NewSchedule extends StatefulWidget {
  @override
  _NewScheduleState createState() => _NewScheduleState();
}

class _NewScheduleState extends State<NewSchedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPallete.primaryColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
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
                  "Schedule",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            Expanded(
              child: Container(),
            )
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20, left: 16),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Days",
                style: TextStyle(
                    color: AppPallete.secondaryTextColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w300)),
            SizedBox(
              height: 12,
            ),
            PRDayPicker(),
            SizedBox(
              height: 20,
            ),
            Divider(
              color: AppPallete.dividerColor,
            ),
            SizedBox(
              height: 20,
            ),
            Text("Medicine Times",
                style: TextStyle(
                    color: AppPallete.secondaryTextColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w300)),
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      ),
    );
  }
}
