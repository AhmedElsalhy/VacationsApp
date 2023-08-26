import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vacations_app/view_models/list_of_service_view_model.dart';
import 'package:vacations_app/views/components/bottom_line.dart';
import 'package:vacations_app/views/components/system_colors.dart';
import 'package:vacations_app/views/widgets/copy_right.dart';
import 'package:vacations_app/views/widgets/main_button.dart';
import 'package:vacations_app/constants.dart';
import 'package:vacations_app/views/widgets/text_field.dart';
import 'package:vacations_app/views/widgets/welcome_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isChecked = false;
  String? username;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: beginLinearGradient,
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 98.0,
            ),
            Center(
              child: Container(
                width: 226,
                height: 74,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/image.png'),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 46,
            ),
            Container(
              decoration: const ShapeDecoration(
                color: rectangleBackgroundColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40.0),
                      topLeft: Radius.circular(40.0)),
                ),
              ),
              child: Stack(
                children: [
                  Column(
                    children: <Widget>[
                      const SizedBox(height: 50),
                      const Center(
                        child: WelcomeText(
                          text: 'Welcome !',
                          fontSize: 32,
                        ),
                      ),
                      const WelcomeText(
                        text: 'Log in to the Employees’ Vacations System',
                        fontSize: 17,
                      ),
                      const SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: TextFieldStyle(
                          onChanged: (value) {
                            username = value;
                          },
                          text: 'Username',
                          obscureText: false,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: TextFieldStyle(
                          onChanged: (value) {
                            password = value;
                          },
                          text: 'Password',
                          obscureText: true,
                        ),
                      ),
                      Row(
                        children: [
                          Checkbox(
                            side:
                                const BorderSide(width: 2, color: Colors.white),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                            value: _isChecked,
                            onChanged: (newValue) {
                              setState(() {
                                _isChecked = newValue!;
                              });
                            },
                          ),
                          const Text(
                            'Remember Me',
                            style: kTextFieldStyle,
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      MainButtonStyle(
                        text: 'Log In',
                        onPressed: () async {
                          await Provider.of<ListOfServiceViewModel>(context,
                                  listen: false)
                              .signIn(username: username!, password: password!);
                        },
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          children: [
                            const LineStyle(),
                            Container(
                              width: 24,
                              height: 24,
                              decoration: const ShapeDecoration(
                                shape: OvalBorder(
                                  side: BorderSide(
                                      width: 0.50,
                                      strokeAlign: BorderSide.strokeAlignCenter,
                                      color: welcomeTextColor),
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 4, vertical: 5),
                                child: Text('OR',
                                    textAlign: TextAlign.center,
                                    style: kTextFieldStyle),
                              ),
                            ),
                            const LineStyle(),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const WelcomeText(
                          text: 'Log in with Your Face ID', fontSize: 18),
                      const SizedBox(
                        height: 8,
                      ),
                      const Image(
                        image: AssetImage('images/faceid.png'),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 28),
                        child: CopyRightStyle(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
            )
          ],
        ),
      ),
    );
  }
}
