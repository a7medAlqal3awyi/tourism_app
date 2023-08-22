import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    var textController = TextEditingController();
    var textControllerConfirm = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppConstants.createNewPassword,
          style: TextStyle(
            fontFamily: "Tajawal",
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        height: 680.h,
        child: ListView(
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
                    fontFamily: "Tajawal",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            CustomFormField(
              textInputType: TextInputType.visiblePassword,
              prefixIconPath: 'assets/images/LockIcon.svg',
              hitText: AppConstants.enterNewPassword,
              textEditingController: textController,
              suffixIconPath: "",
            ),
            CustomFormField(
              textInputType: TextInputType.visiblePassword,
              prefixIconPath: 'assets/images/LockIcon.svg',
              hitText: AppConstants.verifyNewPassword,
              textEditingController: textControllerConfirm,
              suffixIconPath: "",
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16.w),
              child: const CustomCheckBox(),
            ),
            const Spacer(),
            CustomButtonWithOnlyText(
                color: const Color(0Xffba7b0be),
                text: AppConstants.follow,
                textColor: Colors.black),
            SizedBox(height: 50.h),
          ],
        ),
      ),
    );
  }
}
