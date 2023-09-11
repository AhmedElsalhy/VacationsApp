import 'package:flutter/material.dart';
import 'package:vacations_app/views/components/system_colors.dart';

class MyActionButton extends StatelessWidget {
  const MyActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: endBackGroundLinearGradient,
      onPressed: () {},
      child: Image.asset('images/chatbot.png'),
    );
  }
}
