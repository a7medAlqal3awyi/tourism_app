import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tourism_app/core/helper.dart';
import 'package:tourism_app/pressentation/widgets/row_of_profile.dart';
import 'package:tourism_app/utils/app_constants.dart';
import 'package:tourism_app/utils/app_styles.dart';

import 'change_language_screen.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppConstants.settings,
          style: TextStyle(
            fontFamily: AppConstants.fontFamily,
            fontWeight: FontWeight.w700,
            fontSize: 16.sp,
          ),
        ),
      ),
      body: Column(
        children: [
          RowOfProfile(
            onTap: (){
              context.push(const ChangeLanguageScreen());
            },
              text: AppConstants.language, iconPath: 'assets/images/World.svg'),
          RowOfProfile(
              text: AppConstants.changePassword,
              iconPath: 'assets/images/LockIcon.svg'),
          RowOfProfile(
              text: AppConstants.aboutCompany,
              iconPath: 'assets/images/InfoSquare.svg'),
          SizedBox(
            height: 30.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/images/Delete.svg'),
              SizedBox(
                width: 10.w,
              ),
              Text(
                AppConstants.deleteAcc,
                style: TextStyle(
                    fontFamily: AppConstants.fontFamily,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: AppStyles.redColor),
              )
            ],
          )
        ],
      ),
    );
  }
}
