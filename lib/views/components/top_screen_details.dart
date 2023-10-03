import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vacations_app/base/base_view/base_view.dart';
import 'package:vacations_app/services/get_unread_tasks_or_notifications_count_service/get_unread_tasks_or_notifications_count_service.dart';
import 'package:vacations_app/view_models/get_unread_tasks_or_notifications_count_view_model.dart';
import 'package:vacations_app/views/components/system_colors.dart';
import 'package:vacations_app/views/components/top_curve_painter.dart';
import 'package:vacations_app/views/screens/notifications_screen/notifications_screen.dart';
import 'package:vacations_app/views/screens/profile_screen/profile_screen.dart';
import 'package:vacations_app/views/widgets/icon_design.dart';
import 'package:vacations_app/views/widgets/text_style_of_pages.dart';

class TopScreenCurveWithIcons extends StatefulWidget {
  const TopScreenCurveWithIcons({
    super.key,
    required this.mainDetailOfScreen,
  });

  final String mainDetailOfScreen;

  @override
  State<TopScreenCurveWithIcons> createState() =>
      _TopScreenCurveWithIconsState();
}

class _TopScreenCurveWithIconsState extends State<TopScreenCurveWithIcons> {
  GetUnreadTasksOrNotificationsCountViewModel?
      getUnreadTasksOrNotificationsCountViewModel;

  @override
  Widget build(BuildContext context) {
    return BaseView<GetUnreadTasksOrNotificationsCountViewModel>(
      vmBuilder: (context) => getUnreadTasksOrNotificationsCountViewModel!,
      builder: _buildScreen,
    );
  }

  @override
  void initState() {
    getUnreadTasksOrNotificationsCountViewModel =
        GetUnreadTasksOrNotificationsCountViewModel(
      service: GetUnreadTasksOrNotificationsCountService(),
    );
    getUnreadTasksOrNotificationsCountViewModel
        ?.getUnreadTasksOrNotificationsCount();

    super.initState();
  }

  final int activeIndex = 0;

  Widget _buildScreen(
      context, GetUnreadTasksOrNotificationsCountViewModel viewModel) {
    final currentDate = DateTime.now();
    final formattedDate = DateFormat('d MMMM, yyyy').format(currentDate);
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.37,
      child: ClipPath(
        clipper: TopCurveClipper(),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                beginBackGroundLinearGradient,
                endBackGroundLinearGradient
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
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
              Row(
                children: [
                  Badge(
                    textColor: Colors.white,
                    backgroundColor: notificationColor,
                    largeSize: 19,
                    alignment: const Alignment(1, -0.5),
                    label: Text(
                      viewModel.unreadCount.toString(),
                    ),
                    offset: const Offset(-7, 0),
                    child: IconDesign(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NotificationsScreen(),
                          ),
                        );
                      },
                      icon: const Icon(Icons.notifications),
                    ),
                  ),
                  const Spacer(),
                  IconDesign(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfileScreen(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.person_rounded),
                  ),
                  IconDesign(
                    onPressed: () {},
                    icon: const Icon(Icons.logout),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13),
                child: LogInTextStyle(
                  text: widget.mainDetailOfScreen,
                  fontSize: 28,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: LogInTextStyle(text: formattedDate, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TopScreenCurveWithBackButton extends StatelessWidget {
  const TopScreenCurveWithBackButton({
    super.key,
    required this.mainDetailOfScreen,
  });

  final String mainDetailOfScreen;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.37,
          child: ClipPath(
            clipper: TopCurveClipper(),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    beginBackGroundLinearGradient,
                    endBackGroundLinearGradient
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
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
                    GestureDetector(
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
                                text: 'Back',
                                fontSize: 17,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    HomePageTextStyle(
                        text: mainDetailOfScreen,
                        fontSize: 28,
                        color: Colors.white),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
