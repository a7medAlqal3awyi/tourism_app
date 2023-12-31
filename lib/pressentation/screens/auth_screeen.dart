import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tourism_app/core/helper.dart';
import 'package:tourism_app/cubit/login_cubit/login_state.dart';
import 'package:tourism_app/pressentation/screens/login/login_screen.dart';
import 'package:tourism_app/pressentation/screens/register/register_screen.dart';
import 'package:tourism_app/pressentation/widgets/custom_button.dart';
import 'package:tourism_app/pressentation/widgets/custom_button_with_only_text.dart';
import 'package:tourism_app/pressentation/widgets/screen_divider.dart';
import 'package:tourism_app/utils/app_constants.dart';
import 'package:tourism_app/utils/app_styles.dart';

import '../../cubit/login_cubit/login_cubit.dart';
import '../widgets/text_and_text_button.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppLoginCubit(),
      child: BlocConsumer<AppLoginCubit, AppLoginStates>(
        listener: (context, state) {
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              leading: const Icon(Icons.arrow_back_outlined),
            ),
            body: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 38.5.w),
                  child: Center(
                    child: Text(
                      AppConstants.joinToMostakbal,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 23.5.sp,
                          fontFamily: AppConstants.fontFamily),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SvgPicture.asset(
                  "assets/images/bag.svg",
                  width: 85.6.w,
                  height: 89.1.h,
                ),
                SizedBox(
                  height: 61.h,
                ),
                CustomButton(
                    onTap: () {
                      AppLoginCubit.get(context).signInWithGoogle(context);
                    },
                    textColor: Colors.black,
                    color: const Color(0xffE9F4FF),
                    text: AppConstants.completeWithGoogle,
                    imagePath: "assets/images/Google.svg"),
                SizedBox(
                  height: 24.h,
                ),
                CustomButton(
                    textColor: Colors.white,
                    color: AppStyles.primaryColor,
                    text: AppConstants.completeWithGoogle,
                    imagePath: "assets/images/Facebook.svg"),
                SizedBox(
                  height: 24.h,
                ),
                CustomButton(
                    textColor: Colors.white,
                    color: Colors.black,
                    text: AppConstants.completeWithApple,
                    imagePath: "assets/images/Apple.svg"),
                ScreenDivider(dividerText: AppConstants.or),
                CustomButtonWithOnlyText(
                  onTap: () {
                    context.push(const LoginScreen());
                  },
                  textColor: Colors.white,
                  color: AppStyles.primaryColor,
                  text: AppConstants.signWithPassward,
                ),
                SizedBox(
                  height: 30.h,
                ),
                TextAndTextButton(
                  txt: AppConstants.donotHaveAccount,
                  txtButton: AppConstants.createAccount,
                  onPressed: () {
                    context.push(const RegisterScreen());
                  },
                ),
                //85,90
              ],
            ),
          );
        },
      ),
    );
  }
}
