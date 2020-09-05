import "package:flutter/material.dart";
import 'package:pill_reminder/Screens/HomeScreen.dart';
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
          primaryColor: AppPallete.primaryColor,
          accentColor: AppPallete.accentColor),
      initialRoute: "/",
      routes: {
        "/": (context) => HomeScreen(),
        "/intake": (context) => NewMedicine()
      },
    );
  }
}