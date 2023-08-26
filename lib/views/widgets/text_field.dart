import 'package:flutter/material.dart';
import 'package:vacations_app/constants.dart';

class TextFieldStyle extends StatefulWidget {
  const TextFieldStyle(
      {super.key,
      @required this.text,
      @required this.obscureText,
      @required this.onChanged});
  final String? text;
  final bool? obscureText;
  final Function(String)? onChanged;

  @override
  State<TextFieldStyle> createState() => _TextFieldStyleState();
}

class _TextFieldStyleState extends State<TextFieldStyle> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: widget.onChanged,
      obscureText: widget.obscureText!,
      style: const TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white)),
        hintText: widget.text,
        hintStyle: kTextFieldStyle,
      ),
    );
  }
}
