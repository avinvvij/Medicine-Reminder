import 'package:flutter/material.dart';

class PRDatePicker {
  PRDatePicker({@required this.context});
  final BuildContext context;

  Future<DateTime> displayDatePicker() async {
    final DateTime pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now().subtract(Duration(days: 1460)),
        lastDate: DateTime.now().add(Duration(days: 1460)));

    if (pickedDate != null) {
      return pickedDate;
    } else {
      return null;
    }
  }
}
