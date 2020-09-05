import "package:flutter/material.dart";
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:pill_reminder/Config/RouteIDs.dart';
import 'package:pill_reminder/Utils/Colors.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppPallete.primaryColor,
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                flex: 1,
                child: Center(child: Icon(Ionicons.ios_settings, size: 22))),
            Expanded(
              flex: 20,
              child: Center(
                child: Text(
                  "Pill Reminder",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: Center(
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                              context, RouteIDs.NEW_MED_INTAKE_ID);
                        },
                        child: Icon(Ionicons.md_add, size: 22)))),
          ],
        ),
        elevation: 0,
        backgroundColor: AppPallete.primaryColor,
      ),
      body: Container(
        color: AppPallete.primaryColor,
        child: Center(child: NoData()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppPallete.textColor,
        child: Center(
          child: Icon(
            FontAwesome.calendar,
            color: AppPallete.primaryColor,
          ),
        ),
      ),
    );
  }
}

class NoData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: [
        Card(
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Text("Begin with adding\na new medicine course",
                textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
          ),
        ),
        Positioned.fill(
          top: -35,
          child: Align(
            alignment: Alignment.topCenter,
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  MaterialIcons.add,
                  size: 50,
                  color: AppPallete.primaryColor,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
