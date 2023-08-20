import 'package:flutter/material.dart';

class MainButtonStyle extends StatelessWidget {
  MainButtonStyle({@required this.text});
  String? text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 58,
        child: ElevatedButton(

          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF00C7B4),
          ),
          onPressed: () {  },
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Icon(Icons.arrow_forward,
                  size: 24.0,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  text!,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Bahij TheSansArabic',
                    fontWeight: FontWeight.w500,

                  ),
                ),
              ),
            ],
          ),

        ),
      ),
    );
  }
}