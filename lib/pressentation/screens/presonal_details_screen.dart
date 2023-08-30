import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:tourism_app/pressentation/widgets/custom_button_with_only_text.dart';
import 'package:tourism_app/utils/app_constants.dart';

import '../../utils/app_styles.dart';
import '../widgets/custom_form_field.dart';
import '../widgets/take_bith_day.dart';

class PersonalDetailsScreen extends StatefulWidget {
  const PersonalDetailsScreen({super.key});

  @override
  State<PersonalDetailsScreen> createState() => _PersonalDetailsScreenState();
}

class _PersonalDetailsScreenState extends State<PersonalDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var nameController = TextEditingController();
    var emailController = TextEditingController();
    var phoneController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppConstants.completeYourPersonalProfile,
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16.sp,
              fontFamily: "Tajawal"),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 80.w,
                  height: 80.h,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Stack(
                    children: [
                      Image.asset('assets/images/ahmed.jpg'),
                      Center(child: Image.asset('assets/images/Camera.png')),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Center(
                child: Text(
                  AppConstants.choosePersonalImage,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 12.sp,
                      fontFamily: "Tajawal"),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                AppConstants.fullName,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                  fontFamily: "Tajawal",
                ),
              ),
              CustomFormField(
                controller: nameController,
                type: TextInputType.name,
                label: AppConstants.enterFullName,
                prefixIconPath: "",
                suffixIconPath: "assets/images/Profile.svg",
              ),
              Text(
                AppConstants.email,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                  fontFamily: "Tajawal",
                ),
              ),
              CustomFormField(
                controller: emailController,
                type: TextInputType.emailAddress,
                label: AppConstants.enterYourEmail,
                prefixIconPath: "",
                suffixIconPath: "assets/images/EmailIcon.svg",
              ),
              Text(
                AppConstants.yourBirthdate,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                  fontFamily: "Tajawal",
                ),
              ),

              /// ToDo show the date
              ///
              const TakeBirthDay(),
              Text(
                AppConstants.yourPhone,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                  fontFamily: "Tajawal",
                ),
              ),
              CustomFormField(
                prefixIconPath: "assets/images/Frame.svg",
                suffixIconPath: "",
                controller: phoneController,
                type: TextInputType.phone,
                label: AppConstants.enterYourPhone,
              ),
              SizedBox(height:40.h,),
              Center(
                child: CustomButtonWithOnlyText(
                    color: AppStyles.primaryColor,
                    text: AppConstants.follow,
                    textColor: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
