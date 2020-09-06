import "package:flutter/material.dart";
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:pill_reminder/Utils/Colors.dart';
import 'package:table_calendar/table_calendar.dart';

class MedSchedule extends StatefulWidget {
  @override
  _MedScheduleState createState() => _MedScheduleState();
}

class _MedScheduleState extends State<MedSchedule> {
  CalendarController _calendarController = CalendarController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPallete.primaryColor,
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: TableCalendar(
              daysOfWeekStyle: DaysOfWeekStyle(
                  weekdayStyle: TextStyle(
                      color: AppPallete.textColor, fontWeight: FontWeight.w200),
                  weekendStyle: TextStyle(
                      color: AppPallete.textColor,
                      fontWeight: FontWeight.w200)),
              startingDayOfWeek: StartingDayOfWeek.monday,
              calendarController: _calendarController,
              headerVisible: true,
              headerStyle: HeaderStyle(
                  centerHeaderTitle: true,
                  formatButtonVisible: false,
                  leftChevronIcon: Icon(
                    MaterialIcons.chevron_left,
                    color: AppPallete.textColor,
                  ),
                  rightChevronIcon: Icon(
                    MaterialIcons.chevron_right,
                    color: AppPallete.textColor,
                  ),
                  titleTextStyle: TextStyle(color: AppPallete.textColor)),
              calendarStyle: CalendarStyle(
                todayColor: Colors.grey[700],
                selectedColor: Colors.blueGrey[900],
                outsideDaysVisible: false,
                weekendStyle: TextStyle(color: AppPallete.textColor),
                weekdayStyle: TextStyle(color: AppPallete.textColor),
                outsideWeekendStyle: TextStyle(color: AppPallete.textColor),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
            ),
          )
        ],
      ),
      appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          title: Row(
            children: [
              Expanded(
                flex: 1,
                child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(MaterialIcons.arrow_back)),
              ),
              Expanded(
                  flex: 20, child: Center(child: Text("Medicine Schedule"))),
              Expanded(
                flex: 1,
                child: Container(),
              )
            ],
          )),
    );
  }
}
