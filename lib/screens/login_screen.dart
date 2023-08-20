import 'package:flutter/material.dart';
import '../widgets/welcome_text.dart';
import 'package:vacations_app/constants.dart';
import 'package:vacations_app/widgets/main_button.dart';
import 'package:vacations_app/widgets/text_field.dart';
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
      backgroundColor: Color(0xFF013168),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: <Widget>[
          SizedBox(height: 98,),
          Center(
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
          SizedBox(height: 46,),
          Expanded(
            child: Container(
              decoration: ShapeDecoration(
                color: Color(0xFF3A6496),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40.0),
                      topLeft: Radius.circular(40.0)
                  ),
                ),
              ),
              child: Stack(
                children: [
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 50),
                        Center(
                          child: WelcomeText(text: 'Welcome !',fontSize: 32,),

                        ),
                        WelcomeText(text: 'Log in to the Employees’ Vacations System',
                          fontSize: 17,
                        ),
                        SizedBox(height: 30),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: TextFieldStyle(
                              text: 'Username',
                              obscureText: false),
                        ),
                        SizedBox(height: 30),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: TextFieldStyle(
                            text: 'Password',
                            obscureText: true,
                          ),
                        ),
                        Row(
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
                        SizedBox(height:30),
                        MainButtonStyle(text: 'Log In',),
                        SizedBox(height:15),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Container(
                              margin: EdgeInsets.all(9),
                              decoration: kLineStyle,
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        WelcomeText(text: 'Log in with Your Face ID', fontSize: 18),
                        SizedBox(height: 8,),
                        Image(
                          image: AssetImage('images/faceid.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 28),
                          child: kCopyRightStyle,
                        ),



                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
