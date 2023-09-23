import 'package:flutter/material.dart';
import 'package:vacations_app/base/base_view/base_view.dart';
import 'package:vacations_app/base/base_view_models/base_view_model.dart';
import 'package:vacations_app/views/components/system_colors.dart';
import 'package:vacations_app/views/components/Buttons_app_style.dart';
import 'package:vacations_app/views/widgets/filter_text_field_item.dart';
import 'package:vacations_app/views/widgets/text_field_with_span_style.dart';
import 'package:vacations_app/views/widgets/text_style_of_pages.dart';
import 'package:vacations_app/views/components/top_screen_details.dart';

class RequestAVacation extends StatelessWidget {
  const RequestAVacation({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView(
      vmBuilder: (context) => BaseViewModel(),
      builder: _buildScreen,
    );
  }

  Widget _buildScreen(context, BaseViewModel viewModel) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TopScreenCurveWithIcons(
              mainDetailOfScreen: 'Request a Vacation',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HomePageTextStyle(
                    text: 'Request’s Information',
                    fontSize: 28,
                    color: homePageTextColor,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const TextFieldWithSpanStyleAndIcons(
                    firstTextSpan: 'Vacation Type',
                    imageIconItem: TextFieldIcon(),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const TextFieldWithSpanStyleAndIcons(
                    firstTextSpan: 'Start Date',
                    imageIconItem: CalendarIconWithCircleBackground(),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const TextFieldWithSpanStyleAndIcons(
                    firstTextSpan: 'End Date',
                    imageIconItem: CalendarIconWithCircleBackground(),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const TextFieldWithSpanStyle(
                    firstTextSpan: 'Period in Days',
                    maxLines: 1,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const TextFieldWithSpanStyle(
                    firstTextSpan: 'Notes',
                    maxLines: 5,
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  const HomePageTextStyle(
                      text: 'Attachments',
                      fontSize: 28,
                      color: homePageTextColor),
                  const SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      viewModel.openFiles();
                    },
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Stack(
                        alignment: AlignmentDirectional.centerStart,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/uploadFile.png'),
                                ),
                              ),
                            ),
                          ),
                          const Positioned(
                            top: 20,
                            left: 70,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                HomePageTextStyle(
                                    text: 'Attach Your Files Here',
                                    fontSize: 11,
                                    color: homePageTextColor),
                                SizedBox(
                                  height: 5,
                                ),
                                HomePageTextStyle(
                                  text: 'The files should be PFD, PNG, or JPG\n'
                                      ' with max size of 20 MB.',
                                  fontSize: 11,
                                  color: lightTextColor,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ButtonAppStyle(
                    textOfButton: 'Send for Approval',
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
