import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app/pressentation/widgets/custom_button.dart';
import 'package:tourism_app/utils/app_constants.dart';
import 'package:tourism_app/utils/app_styles.dart';
import '../widgets/profile_app_bar.dart';
import '../widgets/row_of_profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            // VideoApp(),
            Container(
              clipBehavior: Clip.none,
              color: Colors.cyan,
              width: 375,
              height: 150,
            ),
            const ProfileAppBar(),
            Positioned(
              top: 110.h,
              left: 164.w,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 40,
                child: CircleAvatar(
                  radius: 36,
                  backgroundImage: AssetImage('assets/images/ahmed.jpg'),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 40.h,
        ),
        Text(
          AppConstants.ahmedAlqal3awyi,
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontFamily: AppConstants.fontFamily,
              fontSize: 24.sp),
        ),
        Text(
          AppConstants.ahmedEmail,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontFamily: AppConstants.fontFamily,
              fontSize: 14.sp,
              color: const Color(0xff7D848D)),
        ),
        SizedBox(
          height: 40.h,
        ),
        RowOfProfile(
          text: AppConstants.editAccount,
          iconPath: 'assets/images/Profile.svg',
        ),
        RowOfProfile(
          text: AppConstants.previousTrips,
          iconPath: 'assets/images/Plane.svg',
        ),
        RowOfProfile(
          text: AppConstants.privacyPolicy,
          iconPath: 'assets/images/EmailIcon.svg',
        ),
        RowOfProfile(
          text: AppConstants.settings,
          iconPath: 'assets/images/Setting.svg',
        ),
        SizedBox(height: 40.h,),
        CustomButton(
          imagePath: 'assets/images/Logout.svg',
            color: Colors.transparent, text: AppConstants.signOut, textColor: AppStyles.redColor)
      ],
    ));
  }
}
