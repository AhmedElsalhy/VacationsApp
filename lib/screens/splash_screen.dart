import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'login_screen.dart';
import 'package:vacations_app/constants.dart';
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
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color(0xFF013168),
                  Color(0xFF024594)],
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
          child: kCopyRightStyle,
        ),
          ],
        )
      ),
    );
  }
}