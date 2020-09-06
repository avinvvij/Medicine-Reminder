import "package:flutter/material.dart";
import 'package:pill_reminder/Config/RouteIDs.dart';
import 'package:pill_reminder/Screens/HomeScreen.dart';
import 'package:pill_reminder/Screens/NewDosage.dart';
import 'package:pill_reminder/Screens/NewMedicine.dart';
import 'package:pill_reminder/Utils/Colors.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
          hintColor: AppPallete.dividerColor,
          primaryColor: AppPallete.primaryColor,
          accentColor: AppPallete.accentColor),
      initialRoute: RouteIDs.HOME_SCREEN_ID,
      routes: {
        RouteIDs.HOME_SCREEN_ID: (context) => HomeScreen(),
        RouteIDs.NEW_MED_INTAKE_ID: (context) => NewMedicine(),
        RouteIDs.NEW_DOSAGE_ID: (context) => NewDosage()
      },
    );
  }
}
