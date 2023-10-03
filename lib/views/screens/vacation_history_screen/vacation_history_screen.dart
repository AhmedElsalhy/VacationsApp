import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vacations_app/models/get_emp_all_vacation_requests_response_model.dart';
import 'package:vacations_app/views/components/system_colors.dart';
import 'package:vacations_app/views/screens/filter_my_requests_screen/filter_my_requests_screen.dart';
import 'package:vacations_app/views/widgets/my_vacations_items.dart';
import 'package:vacations_app/views/widgets/text_style_of_pages.dart';
import 'package:vacations_app/views/components/top_screen_details.dart';

class VacationHistory extends StatefulWidget {
  const VacationHistory({super.key, required this.requests});

  final List<Payload> requests;

  @override
  State<VacationHistory> createState() => _VacationHistoryState();
}

class _VacationHistoryState extends State<VacationHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TopScreenCurveWithIcons(
                mainDetailOfScreen: 'Vacation History'),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 24),
              child: Row(
                children: [
                  const HomePageTextStyle(
                      text: 'My Requests ',
                      fontSize: 28,
                      color: vacationTypesTextColor),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      showCupertinoModalPopup(
                        context: context,
                        builder: (context) => const FilterMyRequests(),
                      );
                    },
                    child: const ImageIcon(
                      AssetImage('images/filter_icon.png'),
                      color: firstCalendarIconColor,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: widget.requests.length,
                itemBuilder: (context, index) {
                  final request = widget.requests[index];
                  DateFormat apiFormat = DateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'");
                  DateFormat outputFormat = DateFormat("yyyy-MM-dd hh:mm");
                  DateTime requestDate =
                      apiFormat.parse(request.requestDateString ?? '');

                  String formattedRequestDate =
                      outputFormat.format(requestDate);
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: MyVacationsItems(
                      myVacationTypeText: request.type ?? '',
                      responseMessageText: 'Accepted',
                      backGroundResponseMessageColor:
                          thirdBackGroundVacationsTypesColor,
                      responseMessageBorderColor: thirdCalendarIconColor,
                      responseMessageTextColor: thirdCalendarIconColor,
                      requestDate: formattedRequestDate,
                      periodDate: request.period.toString(),
                      startDate: request.startDateString?.split('T')[0] ?? '',
                      endDate: request.endDateString?.split('T')[0] ?? '',
                      sizedBoxWidth: 50,
                      widthOfContainer: double.infinity,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
