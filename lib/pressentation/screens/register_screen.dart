import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app/core/helper.dart';
import 'package:tourism_app/pressentation/screens/login_screen.dart';
import 'package:tourism_app/pressentation/screens/presonal_details_screen.dart';
import 'package:tourism_app/pressentation/widgets/custom_button_with_only_text.dart';
import 'package:tourism_app/pressentation/widgets/custom_form_field.dart';
import 'package:tourism_app/pressentation/widgets/row_of_G_G_A.dart';
import 'package:tourism_app/pressentation/widgets/screen_divider.dart';
import 'package:tourism_app/pressentation/widgets/text_and_text_button.dart';
import 'package:tourism_app/utils/app_constants.dart';
import 'package:tourism_app/utils/app_styles.dart';

import '../widgets/check_with_rich_text.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(
                width: 190.w,
                height: 90.h,
                child: Text(
                  textAlign: TextAlign.center,
                  AppConstants.createNewAccount,
                  style: TextStyle(
                    fontFamily: "Tajawal",
                    fontWeight: FontWeight.w700,
                    fontSize: 28.sp,
                  ),
                ),
              ),
              CustomFormField(

                type: TextInputType.emailAddress,
                controller: emailController,
                label: AppConstants.email,
                prefixIconPath: 'assets/images/EmailIcon.svg',
                suffixIconPath: "",
                validate: (value) {
                  if (value
                      .toString()
                      .isEmpty) {
                    return AppConstants.emailValidation;
                  } else {
                    return null;
                  }
                },
              ),
              CustomFormField(
                isPassword: true,

                ///ToDo
                // suffixPressed: ,
                type: TextInputType.visiblePassword,
                controller: passwordController,
                label: AppConstants.password,
                prefixIconPath: 'assets/images/LockIcon.svg',
                suffixIconPath: 'assets/images/Hide.svg',
                validate: (value) {
                  if (value
                      .toString()
                      .isEmpty) {
                    return AppConstants.passwordValidation;
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(
                height: 10.h,
              ),
              const CheckBoxWithRichText(),
              SizedBox(
                height: 10.h,
              ),
              CustomButtonWithOnlyText(
                  onTap: () {
                    if(formKey.currentState!.validate()){
                      context.push(const PersonalDetailsScreen());
                    }
                  },
                  color: AppStyles.primaryColor,
                  text: AppConstants.createAccount,
                  textColor: Colors.white),
              ScreenDivider(dividerText: AppConstants.orCompleteUsing),
              const RowOfGFA(),
              SizedBox(
                height: 20.h,
              ),
              TextAndTextButton(
                txt: AppConstants.alreadyHaveAccount,
                txtButton: AppConstants.signIn,
                onPressed: () {
                  context.push(const LoginScreen());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
