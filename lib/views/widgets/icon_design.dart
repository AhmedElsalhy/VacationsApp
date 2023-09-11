import 'package:flutter/material.dart';

class IconDesign extends StatelessWidget {
  const IconDesign({
    super.key,
    required this.icon,
    required this.onPressed,
  });
  final Widget icon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: icon,
      color: Colors.white,
      iconSize: 35,
    );
  }
}