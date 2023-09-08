import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app/core/helper.dart';
import 'package:tourism_app/pressentation/screens/profile/presonal_details_screen.dart';
import 'package:tourism_app/pressentation/widgets/custom_alert_widget.dart';
import 'package:tourism_app/pressentation/widgets/custom_button_with_only_text.dart';
import 'package:tourism_app/utils/app_constants.dart';

import '../widgets/check_box.dart';
import '../widgets/custom_form_field.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var passwordController = TextEditingController();
    var verifyPasswordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          AppConstants.createNewPassword,
          style: TextStyle(
            fontFamily: AppConstants.fontFamily,
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 720.h,
          child: Column(
            children: [
              Image.asset(
                "assets/images/lock.png",
                height: 105.h,
                width: 128.w,
              ),
              SizedBox(
                height: 30.h,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 18.0.w, vertical: 8.0.h),
                  child: Text(
                    AppConstants.createNewPassword,
                    style: TextStyle(
                      fontFamily: AppConstants.fontFamily,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              CustomFormField(
                type: TextInputType.visiblePassword,
                prefixIconPath: 'assets/images/LockIcon.svg',
                label: AppConstants.enterNewPassword,
                suffixIconPath: "assets/images/Hide.svg",
                controller: passwordController,
                isPassword: true,
              ),
              CustomFormField(
                type: TextInputType.visiblePassword,
                prefixIconPath: 'assets/images/LockIcon.svg',
                label: AppConstants.verifyNewPassword,
                suffixIconPath: "assets/images/Hide.svg",
                controller: verifyPasswordController,
                isPassword: true,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: CustomCheckBox(
                  title: AppConstants.rememberMe,
                ),
              ),
              const Spacer(),
              CustomButtonWithOnlyText(
                  onTap: () {
                    show(context);
                  },
                  color: const Color(0xfffba7b0be),
                  text: AppConstants.follow,
                  textColor: Colors.black),
              SizedBox(height: 50.h),
            ],
          ),
        ),
      ),
    );
  }
}

void show(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return CustomAlertWidget(
          imagePath: 'assets/images/Succes.png',
          message: AppConstants.changePasswordSuccess,
          onButtonPressed: () {
            context.pushAndRemove(const PersonalDetailsScreen());
          },
        );
      });
}
