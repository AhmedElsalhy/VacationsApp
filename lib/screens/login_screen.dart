import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import '../widgets/welcome_text.dart';
import 'package:vacations_app/widgets/text_field.dart';
import 'package:vacations_app/widgets/main_button.dart';
import 'package:vacations_app/constants.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xFF013168),
              ),
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
              width:410.0,
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
              child: WelcomeText(text: 'Welcome !',fontSize: 32,),
            ),
            Positioned(
              top: 337,
              left: 52,
              right: 52,
              child:WelcomeText(text: 'Log in to the Employees’ Vacations System',
                fontSize: 17,
              )
            ),
            Positioned(
              left: 97,
              bottom: 28,
              child: kCopyRightStyle,
            ),
            Positioned(
              left: 16.0,
              top: 400.50,
              child:Container(
                width: 380,
                height: 76,
                child: TextFieldStyle(
                  text: 'Username',
                  obscureText: false,
                ),
              ),
            ),
            Positioned(
              top: 475.5,
              left: 16,
              child:Container(
                width: 380,
                height: 76,
                child: TextFieldStyle(
                  text: 'Password',
                  obscureText: true,
                ),
              ),
            ),
          Positioned(
            left: 3,
            top: 520,
           child: Row(
             children: [
               Checkbox(

                 side: BorderSide( width:2,color: Colors.white),
                 shape:RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(4)
                 ) ,
                 value: _isChecked,
                 onChanged: (newValue){
                   setState(() {
                     _isChecked = newValue!;
                   });
                 },
               ),
               Text(
                 'Remember Me',
                 style: kTextFieldStyle,
               ),
             ],
           ),
          ),
          Positioned(
            left: 16,
            top: 600,
            child:MainButtonStyle(text: 'Log In',),
          ),
          Positioned(
            left: 16,
            top: 690,
            child: Container(
              width: 180,
              decoration:kLineStyle,
            ),
          ),
          Positioned(
            left: 197,
            top: 678,
            child: CircleAvatar(
              backgroundColor: Color(0xFF6A8FBD),
              radius: 13,
              child: Text('OR',
                style:kTextFieldStyle,
              ),
            ),
          ),
          Positioned(
            right: 16,
            top: 690,
            child: Container(
              width: 173,
              decoration:kLineStyle,
            ),
          ),
          Positioned(
              top: 710,
            left: 124,
            child: WelcomeText(text: 'Log in with Your Face ID', fontSize: 18)

          ),
          Positioned(
            left: 192,
            bottom: 65,
            child: Image(
              image: AssetImage('images/faceid.png'),
            ),

          ),
        ],
      ),
    );
  }
}




