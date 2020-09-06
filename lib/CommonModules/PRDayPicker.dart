import "package:flutter/material.dart";
import 'package:pill_reminder/Utils/Colors.dart';

class PRDayPicker extends StatefulWidget {
  @override
  _PRDayPickerState createState() => _PRDayPickerState();
}

class _PRDayPickerState extends State<PRDayPicker> {
  List<int> selectedDays = [];

  void onDayClicked(int dayIndex) {
    if (selectedDays.indexOf(dayIndex) >= 0) {
      this.setState(() {
        selectedDays.removeAt(selectedDays.indexOf(dayIndex));
      });
    } else {
      this.setState(() {
        selectedDays.add(dayIndex);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      child: Row(
        children: [
          Expanded(
              child: PRDay(
            text: "Mon",
            onTap: () {
              onDayClicked(0);
            },
            isSelected: selectedDays.indexOf(0) >= 0,
          )),
          Expanded(
              child: PRDay(
            text: "Tue",
            onTap: () {
              onDayClicked(1);
            },
            isSelected: selectedDays.indexOf(1) >= 0,
          )),
          Expanded(
              child: PRDay(
            text: "Wed",
            onTap: () {
              onDayClicked(2);
            },
            isSelected: selectedDays.indexOf(2) >= 0,
          )),
          Expanded(
              child: PRDay(
            text: "Thu",
            onTap: () {
              onDayClicked(3);
            },
            isSelected: selectedDays.indexOf(3) >= 0,
          )),
          Expanded(
              child: PRDay(
            text: "Fri",
            onTap: () {
              onDayClicked(4);
            },
            isSelected: selectedDays.indexOf(4) >= 0,
          )),
          Expanded(
              child: PRDay(
            text: "Sat",
            onTap: () {
              onDayClicked(5);
            },
            isSelected: selectedDays.indexOf(5) >= 0,
          )),
          Expanded(
              child: PRDay(
            text: "Sun",
            onTap: () {
              onDayClicked(6);
            },
            isSelected: selectedDays.indexOf(6) >= 0,
          )),
        ],
      ),
    );
  }
}

class PRDay extends StatelessWidget {
  PRDay({@required this.text, @required this.onTap, this.isSelected});
  final String text;
  final Function onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (this.onTap != null) {
          this.onTap();
        }
      },
      child: Container(
        margin: EdgeInsets.only(top: 8, left: 8, right: 8),
        constraints: BoxConstraints(maxHeight: 38, maxWidth: 38),
        decoration: BoxDecoration(
            color: isSelected != null && isSelected
                ? AppPallete.darkPrimaryColor
                : AppPallete.dividerColor,
            borderRadius: BorderRadius.circular(80)),
        child: Center(
            child: Text(text != null ? text : "Mon",
                style: TextStyle(
                    color: isSelected != null && isSelected
                        ? AppPallete.textColor
                        : AppPallete.secondaryTextColor,
                    fontSize: 12))),
      ),
    );
  }
}
