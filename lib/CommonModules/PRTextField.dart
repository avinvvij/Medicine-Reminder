import "package:flutter/material.dart";

class PRTextField extends StatelessWidget {
  PRTextField({@required this.placeholder, @required this.onChanged});
  final String placeholder;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(labelText: placeholder),
      autocorrect: false,
    );
  }
}
