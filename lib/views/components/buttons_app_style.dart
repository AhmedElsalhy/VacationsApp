import 'package:flutter/material.dart';
import 'package:vacations_app/views/components/system_colors.dart';
import 'package:vacations_app/views/widgets/text_style_of_pages.dart';

class MainButtonStyle extends StatelessWidget {
  const MainButtonStyle({super.key, this.text, required this.onPressed});

  final String? text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Material(
        color: mainButtonColor,
        borderRadius: BorderRadius.circular(10),
        child: MaterialButton(
          height: 58.0,
          onPressed: onPressed,
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  text!,
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                width: 220,
              ),
              const Expanded(
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 24,
                  weight: 800,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonAppStyle extends StatelessWidget {
  const ButtonAppStyle({
    super.key,
    required this.textOfButton,
    required this.onPressed,
  });

  final String textOfButton;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: endBackGroundLinearGradient,
      borderRadius: BorderRadius.circular(8),
      child: MaterialButton(
        elevation: 0,
        height: 44,
        minWidth: double.infinity,
        onPressed: onPressed,
        child: HomePageTextStyle(
            text: textOfButton, fontSize: 16, color: Colors.white),
      ),
    );
  }
}
