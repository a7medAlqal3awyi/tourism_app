import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tourism_app/pressentation/widgets/custom_button_with_only_text.dart';
import 'package:tourism_app/utils/app_styles.dart';

import '../../utils/app_constants.dart';
import '../widgets/edit_profile_row.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppConstants.editMyProfile,
          style: TextStyle(
            fontFamily: AppConstants.fontFamily,
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 40.w,
            backgroundImage: const AssetImage('assets/images/ahmed.jpg'),
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            AppConstants.changeYourProfilePic,
            style: TextStyle(
              fontFamily: AppConstants.fontFamily,
              fontWeight: FontWeight.w700,
              color: AppStyles.primaryColor,
              fontSize: 12.sp,
            ),
          ),
          EditProfileRow(
            title: AppConstants.fullName,
            hint: AppConstants.fullAhmedName,
            iconPath: 'assets/images/Profile.svg',
          ),
          EditProfileRow(
            title: AppConstants.email,
            hint: AppConstants.ahmedEmail,
            iconPath: 'assets/images/EmailIcon.svg',
          ),
          EditProfileRow(
            title: AppConstants.yourBirthdate,
            hint: AppConstants.myBirth,
            iconPath: 'assets/images/Calendar.svg',
          ),
          Wrap(
            children: [
              Text(
                AppConstants.yourPhone,
                style: TextStyle(
                  fontFamily: AppConstants.fontFamily,
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                width: 343.w,
                height: 48.h,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.05),
                    borderRadius: BorderRadius.circular(8.w)),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/images/Frame.svg'),
                    Text(
                      AppConstants.number,
                      style: TextStyle(
                        fontFamily: AppConstants.fontFamily,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff333333),
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 170.h,
          ),
          CustomButtonWithOnlyText(
            color: AppStyles.primaryColor,
            text: AppConstants.conferm,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
