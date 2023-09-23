import 'package:flutter/material.dart';
import 'package:vacations_app/views/components/list_of_notifications.dart';
import 'package:vacations_app/views/components/system_colors.dart';
import 'package:vacations_app/views/widgets/text_style_of_pages.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: beginBackGroundLinearGradient,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 51),
              child: Center(
                child: Container(
                  width: 98,
                  height: 32,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/image.png'),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Row(
                  children: [
                    Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 25,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5, left: 8),
                      child: HomePageTextStyle(
                          text: 'Back', fontSize: 17, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16, top: 16),
              child: HomePageTextStyle(
                text: 'Notifications',
                fontSize: 28,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              constraints: const BoxConstraints(minHeight: 1000),
              decoration: const ShapeDecoration(
                color: welcomeTextColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                shadows: [
                  BoxShadow(
                    color: boxShadowColor,
                    blurRadius: 22,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24, 24, 24, 80),
                child: Column(
                  children: notificationsItem.map(
                    (item) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: item,
                      );
                    },
                  ).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
