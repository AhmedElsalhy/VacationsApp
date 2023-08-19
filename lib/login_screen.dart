import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xFF013168), Color(0xFF024594)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
          ),
          Positioned(
            left: 102,
            top: 98,
            child: Container(
              width: 226,
              height: 74,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/image.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 218,
            child: Container(
              width:412.0,
              height: 714.0,
              decoration: ShapeDecoration(
                color: Color(0xFF3A6496),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40.0),
                      topLeft: Radius.circular(40.0)
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 143,
            top: 286,
            child: Text(
              'Welcome !',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFFF8F8F8),
                  fontSize: 33,
                  fontFamily: 'Bahij TheSansArabic',
                  fontWeight: FontWeight.w500
              ),
            ),
          ),
          Positioned(
            top: 337,
            left: 52,
            right: 52,
            child:Text(
              'Log in to the Employees’Vacations System',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFF2F4F6),
                fontSize: 17,
                fontWeight: FontWeight.w500,
                fontFamily: 'Bahij TheSansArabic',
              ),
            ),
          ),
          Positioned(
            left: 16.0,
            top: 450.50,
            child:Container(
              width: 380,
              height: 76,
              child: TextField(
                style: TextStyle(
                    color: Colors.white,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFF3A6496),
                  hintText: 'Username',
                  hintStyle: TextStyle(
                      color: Colors.white
                  ),


                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}