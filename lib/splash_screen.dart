import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vacations_app/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.immersive
    );
    Future.delayed(Duration(seconds: 2),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_)=>LoginScreen(),
      ));
    });
  }


  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual,
        overlays: SystemUiOverlay.values
    );
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFF013168), Color(0xFF024594)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child:Stack(
          children: [
            Center(
              child: Container(
              width: 226,
              height: 74,
              decoration: BoxDecoration(
                image: DecorationImage(
                  centerSlice:Rect.zero,
                  image: AssetImage(
                      'images/image.png'),
                  fit: BoxFit.fill,
                ),
              ),
          ),
            ),
        Positioned(
          left: 97,
          bottom: 28,
          child: Text(
            'Copyright - Ejada Systems Ltd. 1444 AH - 2023\n Version 1.0.0',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFFAFAFA),
              fontSize: 12,
              fontFamily: 'Bahij TheSansArabic',
              fontWeight: FontWeight.w500,
              height: 1.08,
              letterSpacing: 0.07,
            ),
        ),
        ),
          ],
        )
      ),
    );
  }
}