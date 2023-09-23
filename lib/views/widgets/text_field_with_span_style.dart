import 'package:flutter/material.dart';
import 'package:vacations_app/constants.dart';
import 'package:vacations_app/views/components/system_colors.dart';

class TextFieldWithSpanStyleAndIcons extends StatelessWidget {
  const TextFieldWithSpanStyleAndIcons({
    super.key,
    required this.firstTextSpan,
    this.imageIconItem,
  });

  final String firstTextSpan;
  final Widget? imageIconItem;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: () {},
            icon: imageIconItem!,
          ),
          label: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: firstTextSpan,
                  style: kFirstTextFieldSpanStyle,
                ),
                const TextSpan(
                  text: '*',
                  style: kSecTextFieldSpanStyle,
                )
              ],
            ),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: borderTextFieldColor),
          ),
        ),
      ),
    );
  }
}

class TextFieldWithSpanStyle extends StatelessWidget {
  const TextFieldWithSpanStyle({
    super.key,
    required this.firstTextSpan,
    required this.maxLines,
  });

  final int maxLines;
  final String firstTextSpan;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        label: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: firstTextSpan,
                style: kFirstTextFieldSpanStyle,
              ),
              const TextSpan(
                text: '*',
                style: kSecTextFieldSpanStyle,
              )
            ],
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: borderTextFieldColor),
        ),
      ),
    );
  }
}
