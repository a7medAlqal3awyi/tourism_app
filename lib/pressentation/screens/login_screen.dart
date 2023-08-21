import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app/pressentation/widgets/screen_divider.dart';
import 'package:tourism_app/utils/app_constants.dart';
import 'package:tourism_app/utils/app_styles.dart';

import '../widgets/custom_button_with_only_text.dart';
import '../widgets/custom_form_field.dart';
import '../widgets/row_of_G_G_A.dart';
import '../widgets/text_and_text_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();

  final passwordController = TextEditingController();
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 8.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  width: 183.w,
                  height: 72.h,
                  child: Text(
                    AppConstants.signInToYourAccount,
                    style: TextStyle(
                        fontSize: 23.5.sp,
                        fontFamily: 'Tajawal',
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomFormField(
                textInputType: TextInputType.emailAddress,
                textEditingController: emailController,
                hitText: AppConstants.email,
                prefixIconPath: 'assets/images/EmailIcon.svg',
                suffixIconPath: "",
              ),
              CustomFormField(
                textInputType: TextInputType.visiblePassword,
                textEditingController: passwordController,
                hitText: AppConstants.password,
                prefixIconPath: 'assets/images/LockIcon.svg',
                suffixIconPath: "assets/images/Hide.svg",
              ),
              Row(
                children: [
                  Checkbox(
                    value: value,
                    focusColor: Colors.grey,
                    checkColor: Colors.white,
                    activeColor: Colors.blue,
                    onChanged: (value) {
                      setState(() {
                        value != value;
                      });
                    },
                    shape: const CircleBorder(),
                  ),
                  Text(
                    AppConstants.rememberMe,
                    style: TextStyle(
                        fontFamily: "Tajawal",
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp),
                  ),
                ],
              ),

              CustomButtonWithOnlyText(
                color: AppStyles.Primary,
                text: AppConstants.signIn,
                textColor: Colors.white,
              ),
              SizedBox(
                height: 20.h,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  AppConstants.doYouForgetPassword,
                  style: TextStyle(
                    fontFamily: "Tajawal",
                    color: AppStyles.Primary,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              ScreenDivider(dividerText: AppConstants.orCompleteUsing),
              const RowOfGFA(),
              SizedBox(height: 32.h,),
              TextAndTextButton(
                txt: AppConstants.donotHaveAccount,
                txtButton: AppConstants.createAccount,
              ),        ],
          ),
        ),
      ),
    );
  }
}
