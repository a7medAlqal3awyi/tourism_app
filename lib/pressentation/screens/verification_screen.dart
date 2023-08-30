import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app/core/helper.dart';
import 'package:tourism_app/pressentation/screens/set_new_password.dart';
import 'package:tourism_app/pressentation/widgets/count_down.dart';
import 'package:tourism_app/pressentation/widgets/custom_button_with_only_text.dart';
import 'package:tourism_app/utils/app_constants.dart';
import 'package:tourism_app/utils/app_styles.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppConstants.verifyPhoneNumber,
          style: TextStyle(
            fontFamily: "Tajawal",
            fontWeight: FontWeight.w700,
            fontSize: 16.sp,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50.h,
            ),
            Text(
              AppConstants.weSendVerificationNumber,
              style: TextStyle(
                  fontFamily: "Tajawal",
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              AppConstants.number,
              style: TextStyle(
                  fontFamily: "Tajawal",
                  fontSize: 14.sp,
                  color: const Color(0xffFF7029),
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 30.h,
            ),
            SizedBox(
              height: 30.h,
            ),
            const CountDownWidget(),
            SizedBox(
              height: 30.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppConstants.codeNotCome,
                  style: TextStyle(
                      fontFamily: "Tajawal",
                      fontWeight: FontWeight.w800,
                      color: Colors.grey.shade400,
                      fontSize: 12.sp),
                ),
                Text(
                  AppConstants.resend,
                  style: TextStyle(
                      fontFamily: "Tajawal",
                      fontWeight: FontWeight.w800,
                      color: Colors.grey.shade800,
                      fontSize: 12.sp),
                ),
              ],
            ),
            SizedBox(
              height: 50.h,
            ),
            CustomButtonWithOnlyText(
              onTap: () {
                context.push(NewPassword());
              },
              color: AppStyles.primaryColor,
              text: AppConstants.follow,
              textColor: Colors.white,
            ),

          ],
        ),
      ),
    );
  }
}
