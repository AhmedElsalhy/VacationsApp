import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vacations_app/components/system_colors.dart';
import 'login_screen.dart';
import 'package:vacations_app/components/constants.dart';
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
    Future.delayed(const Duration(seconds: 2),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_)=>const LoginScreen(),
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
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  beginLinearGradient,
                  endLinearGradient],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child:Stack(
          children: [
            Center(
              child: Container(
              width: 226,
              height: 74,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  centerSlice:Rect.zero,
                  image: AssetImage(
                      'images/image.png'),
                  fit: BoxFit.fill,
                ),
              ),
          ),
            ),
        const Positioned(
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