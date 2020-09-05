import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:pill_reminder/CommonModules/PRTextField.dart';
import 'package:pill_reminder/Utils/Colors.dart';

class NewMedicine extends StatefulWidget {
  @override
  _NewMedicineState createState() => _NewMedicineState();
}

class _NewMedicineState extends State<NewMedicine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPallete.primaryColor,
      appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: AppPallete.primaryColor,
          title: Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Center(
                      child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      MaterialIcons.arrow_back,
                      size: 22,
                    ),
                  ))),
              Expanded(
                  flex: 20,
                  child: Center(
                      child: Text(
                    "New Course",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ))),
              Expanded(
                  flex: 1,
                  child: Center(child: Icon(MaterialIcons.check, size: 22)))
            ],
          )),
      body: Container(
        height: double.infinity,
        padding: EdgeInsets.only(top: 20, left: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              PRTextField(
                placeholder: "Medicine Name*",
                onChanged: (text) {},
              ),
              SizedBox(
                height: 20,
              ),
              RoutePicker(title: "Dosage", value: "1 Pill", displayArrow: true),
              SizedBox(
                height: 8,
              ),
              Divider(
                color: AppPallete.dividerColor,
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      ),
    );
  }
}

class RoutePicker extends StatelessWidget {
  RoutePicker(
      {@required this.title,
      @required this.value,
      this.route,
      this.displayArrow});
  final String title;
  final String value;
  final String route;
  final bool displayArrow;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 8,
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    this.title,
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                        color: AppPallete.secondaryTextColor),
                  )),
              SizedBox(
                height: 4,
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    this.value,
                    style: TextStyle(fontSize: 18),
                  )),
            ],
          ),
        ),
        Expanded(
            flex: 1,
            child: Icon(
              MaterialIcons.chevron_right,
              color: AppPallete.dividerColor,
              size: displayArrow ? 25 : 0,
            ))
      ],
    );
  }
}
