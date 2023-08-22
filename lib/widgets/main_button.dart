import 'package:flutter/material.dart';
import 'package:vacations_app/components/system_colors.dart';

class MainButtonStyle extends StatefulWidget {
    const MainButtonStyle({super.key, this.text,required this.onPressed });
   final String? text;
    final Function()? onPressed;

  @override
  State<MainButtonStyle> createState() => _MainButtonStyleState();
}

class _MainButtonStyleState extends State<MainButtonStyle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Material(
      color: mainButtonColor,
        borderRadius: BorderRadius.circular(10),
        child: MaterialButton(
          minWidth: 398,
          height:58.0 ,
          onPressed:widget.onPressed,
          child:Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  widget.text!,
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(width: 240,),
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