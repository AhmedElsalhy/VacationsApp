import 'package:flutter/material.dart';
import 'package:vacations_app/views/components/system_colors.dart';
import 'package:vacations_app/views/screens/home_page_screen/home_page_screen.dart';
import 'package:vacations_app/views/screens/official_leaves_screen/official_leaves_screen.dart';
import 'package:vacations_app/views/screens/request_a_vacation_screen/request_a_vacation_screen.dart';
import 'package:vacations_app/views/screens/vacation_history_screen/vacation_history_screen.dart';
import 'package:vacations_app/views/components/floating_action_button.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({Key? key}) : super(key: key);

  @override
  MyNavigationBarState createState() => MyNavigationBarState();
}

class MyNavigationBarState extends State<MyNavigationBar> {
  int _currentIndex = 0;
  static List<Widget> screens = <Widget>[
    const HomePage(),
    const VacationHistory(),
    const RequestAVacation(),
    const OfficialLeaves(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: welcomeTextColor,
      body: IndexedStack(
        index: _currentIndex,
        children: screens,
      ),
      floatingActionButton: const MyActionButton(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: firstCalendarIconColor,
        iconSize: 28,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            if (index >= 0 && index < 4) {
              _currentIndex = index;
            } else {
              _currentIndex = -1;
            }
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('images/homepageIcon.png')),
            label: 'Home Page',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('images/vacationHistoryIcon.png')),
            label: 'Vacations History',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('images/requestIcon.png')),
            label: 'Request a Vacation',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('images/officialIcon.png')),
            label: 'Official Leaves',
          ),
        ],
      ),
    );
  }
}
