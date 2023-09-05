import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app/pressentation/widgets/custom_button_with_only_text.dart';

import '../../utils/app_constants.dart';
import '../widgets/custom_form_field.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,

        centerTitle: true,
        title: Text(
          AppConstants.changePassword,
          style: TextStyle(
            fontFamily: AppConstants.fontFamily,
            fontWeight: FontWeight.w700,
            fontSize: 16.sp,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(child: Image.asset('assets/images/lock.png')),
            Text(
              AppConstants.createNewPassword2,
              style: TextStyle(
                fontFamily: AppConstants.fontFamily,
                fontWeight: FontWeight.w700,
                fontSize: 14.sp,
              ),
            ),
            CustomFormField(
              controller: controller,
              type: TextInputType.emailAddress,
              label: AppConstants.enterNewPassword,
              prefixIconPath: 'assets/images/LockIcon.svg',
              suffixIconPath: "",
              validate: (value) {
                if (value.toString().isEmpty) {
                  return AppConstants.emailValidation;
                } else {
                  return null;
                }
              },
            ),
            CustomFormField(
              controller: controller,
              type: TextInputType.emailAddress,
              label: AppConstants.enterNewPassword,
              prefixIconPath: 'assets/images/LockIcon.svg',
              suffixIconPath: "",
              validate: (value) {
                if (value.toString().isEmpty) {
                  return AppConstants.emailValidation;
                } else {
                  return null;
                }
              },
            ),
            CustomFormField(
              controller: controller,
              type: TextInputType.emailAddress,
              label: AppConstants.enterNewPassword,
              prefixIconPath: 'assets/images/LockIcon.svg',
              suffixIconPath: "",
              validate: (value) {
                if (value.toString().isEmpty) {
                  return AppConstants.emailValidation;
                } else {
                  return null;
                }
              },
            ),
            SizedBox(height: 110.h,),
            CustomButtonWithOnlyText(color: const Color(0xffA7B0BE), text: AppConstants.follow, textColor: Colors.black)
          ],
        ),
      ),
    );
  }
}
