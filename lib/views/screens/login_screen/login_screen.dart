import 'package:flutter/material.dart';
import 'package:vacations_app/base/base_view/base_view.dart';
import 'package:vacations_app/view_models/login_view_model.dart';
import 'package:vacations_app/views/components/bottom_line.dart';
import 'package:vacations_app/views/components/system_colors.dart';
import 'package:vacations_app/views/components/Buttons_app_style.dart';
import 'package:vacations_app/views/widgets/copy_right.dart';
import 'package:vacations_app/constants.dart';
import 'package:vacations_app/views/components/navigation_bar.dart';
import 'package:vacations_app/views/widgets/text_field.dart';
import 'package:vacations_app/views/widgets/text_style_of_pages.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<LogInViewModel>(
      vmBuilder: (context) => LogInViewModel(),
      builder: _buildScreen,
    );
  }

  Widget _buildScreen(context, LogInViewModel viewModel) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: beginBackGroundLinearGradient,
      body: GestureDetector(
        onTap: () {
          viewModel.backFocusNode.unfocus();
        },
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 99.0,
              ),
              const Center(
                child: SizedBox(
                  width: 226,
                  height: 74,
                  child: Image(
                    image: AssetImage('images/image.png'),
                  ),
                ),
              ),
              const SizedBox(
                height: 46.0,
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
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 50),
                    const Center(
                      child: LogInTextStyle(
                        text: 'Welcome !',
                        fontSize: 32,
                      ),
                    ),
                    const LogInTextStyle(
                      text: 'Log in to the Employees’ Vacations System',
                      fontSize: 17,
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextFieldStyle(
                        controller: viewModel.username,
                        text: 'Username',
                        obscureText: false,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextFieldStyle(
                        controller: viewModel.password,
                        text: 'Password',
                        obscureText: true,
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          side: const BorderSide(width: 2, color: Colors.white),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          value: viewModel.isChecked,
                          onChanged: (newValue) {
                            if (newValue != null) {
                              viewModel.toggleCheckbox(newValue);
                            }
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
                        if (viewModel.username.text.isEmpty ||
                            viewModel.password.text.isEmpty) {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text('Error'),
                              content: const Text(
                                  'Please enter both username and password.'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text('OK'),
                                ),
                              ],
                            ),
                          );
                          return;
                        }
                        viewModel.changeStatus(true);
                        await viewModel.signIn(
                          username: viewModel.username.text,
                          password: viewModel.password.text,
                        );

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MyNavigationBar(),
                          ),
                        );
                        viewModel.changeStatus(false);
                      },
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        children: [
                          const BottomLineWidget(),
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
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Text('OR',
                                  textAlign: TextAlign.center,
                                  style: kTextFieldStyle),
                            ),
                          ),
                          const BottomLineWidget(),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const LogInTextStyle(
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
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
