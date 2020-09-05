import "package:flutter/material.dart";
import 'package:pill_reminder/Utils/Colors.dart';

class PRTextField extends StatelessWidget {
  PRTextField({@required this.placeholder, @required this.onChanged});
  final String placeholder;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppPallete.dividerColor, width: 0.5),
        ),
        labelText: placeholder,
        labelStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w300,
            color: AppPallete.secondaryTextColor),
      ),
      autocorrect: false,
    );
  }
}
