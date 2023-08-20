import 'package:flutter/material.dart';
import 'package:vacations_app/constants.dart';
class TextFieldStyle extends StatelessWidget {
  TextFieldStyle({@required this.text,@required this.obscureText});
  String? text;
  bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText:obscureText!,

      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
                color: Colors.white
            )
        ),
        fillColor: Color(0xFF3A6496),
        hintText: text,
        hintStyle: kTextFieldStyle,
      ),
    );
  }
}