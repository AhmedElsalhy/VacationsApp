import 'package:flutter/material.dart';
import 'package:vacations_app/base/base_view/base_view.dart';
import 'package:vacations_app/constants.dart';
import 'package:vacations_app/models/get_employee_by_id_response_model.dart';
import 'package:vacations_app/services/get_employee_by_id_service/get_employee_by_id_service.dart';
import 'package:vacations_app/view_models/get_employee_by_id_view_model.dart';
import 'package:vacations_app/views/components/system_colors.dart';
import 'package:vacations_app/views/widgets/profile_details.dart';
import 'package:vacations_app/views/widgets/text_style_of_pages.dart';
import 'package:vacations_app/views/components/top_screen_details.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  GetEmployeeByIdViewModel? getEmployeeByIdViewModel;

  @override
  Widget build(BuildContext context) {
    return BaseView<GetEmployeeByIdViewModel>(
      vmBuilder: (context) => getEmployeeByIdViewModel!,
      builder: _buildScreen,
    );
  }

  @override
  void initState() {
    getEmployeeByIdViewModel = GetEmployeeByIdViewModel(
      service: GetEmployeeByIdService(),
    );
    getEmployeeByIdViewModel?.getEmployeeById();
    super.initState();
  }

  Widget _buildScreen(context, GetEmployeeByIdViewModel viewModel) {
    EmployeeData? employeeData = viewModel.responseEmployeeData;
    return Scaffold(
      backgroundColor: welcomeTextColor,
      body: Stack(
        children: [
          const TopScreenCurveWithBackButton(
            mainDetailOfScreen: 'My Profile',
          ),
          Positioned(
            top: 260,
            left: 16,
            right: 16,
            child: Center(
              child: Container(
                height: 498,
                width: double.infinity,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: boxShadowColor,
                      blurRadius: 25,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 26),
                    child: Column(
                      children: [
                        HomePageTextStyle(
                            text: employeeData?.name ?? '',
                            fontSize: 17,
                            color: vacationTypesTextColor),
                        HomePageTextStyle(
                            text: employeeData?.departmentName ?? '',
                            fontSize: 14,
                            color: firstCalendarIconColor),
                        const Padding(
                          padding: EdgeInsets.only(top: 24),
                          child: MainProfileDetails(
                            emailBirthGenderRecruitmentData: 'Email',
                            mobileBirthPlaceJoinData: 'Mobile',
                            widthValue: 181,
                          ),
                        ),
                        SubProfileDetails(
                          dataOfEmailBirthGenderRecruitment:
                              employeeData?.email ?? '',
                          dataOfMobileBirthPlaceJoin:
                              employeeData?.mobileNumber ?? '',
                          widthValue: 70,
                        ),
                        kDividerLine,
                        const MainProfileDetails(
                          emailBirthGenderRecruitmentData: 'Birthdate',
                          mobileBirthPlaceJoinData: 'Birth Place',
                          widthValue: 160,
                        ),
                        SubProfileDetails(
                          dataOfEmailBirthGenderRecruitment:
                              employeeData?.birthDateString.split('T')[0] ?? '',
                          dataOfMobileBirthPlaceJoin:
                              employeeData?.birthPlace ?? '',
                          widthValue: 160,
                        ),
                        kDividerLine,
                        const MainProfileDetails(
                          emailBirthGenderRecruitmentData: 'Gender',
                          mobileBirthPlaceJoinData: '',
                          widthValue: 0,
                        ),
                        SubProfileDetails(
                            dataOfEmailBirthGenderRecruitment:
                                employeeData?.gender == 0 ? 'Male' : 'Female',
                            dataOfMobileBirthPlaceJoin: '',
                            widthValue: 0),
                        kDividerLine,
                        const MainProfileDetails(
                          emailBirthGenderRecruitmentData: 'Recruitment Date',
                          mobileBirthPlaceJoinData: 'Join Date',
                          widthValue: 110,
                        ),
                        SubProfileDetails(
                            dataOfEmailBirthGenderRecruitment: '31-8-2021',
                            dataOfMobileBirthPlaceJoin:
                                employeeData?.joiningDateString.split('T')[0] ??
                                    '',
                            widthValue: 160)
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 154,
            left: 135,
            child: Container(
              width: 150,
              height: 150,
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: OvalBorder(),
                image: DecorationImage(
                  image: AssetImage('images/profile.png'),
                ),
              ),
            ),
          ),
          Positioned(
            top: 275,
            left: 157.5,
            child: Container(
              height: 35,
              width: 105,
              decoration: ShapeDecoration(
                color: endBackGroundLinearGradient,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 0.50,
                    strokeAlign: BorderSide.strokeAlignCenter,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Center(
                  child: HomePageTextStyle(
                      text: employeeData?.empNo ?? '',
                      fontSize: 17,
                      color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
