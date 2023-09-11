import 'package:flutter/material.dart';
import 'package:vacations_app/constants.dart';

class TextFieldStyle extends StatelessWidget {
  const TextFieldStyle(
      {super.key,
      @required this.text,
      @required this.obscureText,
      @required this.controller});
  final String? text;
  final bool? obscureText;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText!,
      style: const TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white)),
        hintText: text,
        hintStyle: kTextFieldStyle,
      ),
    );
  }
}
