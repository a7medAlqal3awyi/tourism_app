import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app/core/helper.dart';
import 'package:tourism_app/pressentation/screens/verification_screen.dart';
import 'package:tourism_app/pressentation/widgets/custom_button_with_only_text.dart';
import 'package:tourism_app/utils/app_styles.dart';

import '../../cubit/login_cubit/login_cubit.dart';
import '../../cubit/login_cubit/login_state.dart';
import '../../utils/app_constants.dart';
import '../widgets/row_with_icon_and_column.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key, required this.email,});


 final String email ;
  @override
  Widget build(BuildContext context) {
    bool isPressed = false;

    return BlocProvider(
      create: (context) => AppLoginCubit(),
      child: BlocConsumer<AppLoginCubit, AppLoginStates>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {

          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              titleSpacing: 0,
              centerTitle: true,
              title: Text(
                AppConstants.forgetPassword,
                style: TextStyle(
                    fontFamily: AppConstants.fontFamily,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700),
              ),
            ),
            body: Column(
              children: [
                Center(
                  child: Container(
                      height: 290.h,
                      width: 233.w,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/lock.png"),
                        ),
                      )),
                ),
                Text(
                  AppConstants.chooseTheMethod,
                  style: TextStyle(
                      fontFamily: AppConstants.fontFamily,
                      fontWeight: FontWeight.w800,
                      fontSize: 12.sp),
                ),
                SizedBox(
                  height: 20.h,
                ),
                RowWithIconAndColumn(
                  onTap: () {
                    context.push(const VerificationScreen());
                  },
                  firstText: AppConstants.bySMS,
                  iconPath: 'assets/images/Chat.svg',
                  secondText: AppConstants.number,
                ),
                SizedBox(
                  height: 20.h,
                ),
                RowWithIconAndColumn(
                  onTap: () async {
                    FirebaseAuth.instance.sendPasswordResetEmail(email: email);
                              },
                  firstText: AppConstants.byEmail,
                  iconPath: 'assets/images/Chat.svg',
                  secondText: email,
                ),
                SizedBox(
                  height: 100.h,
                ),
                CustomButtonWithOnlyText(
                    onTap: () {},
                    color: isPressed == false
                        ? const Color(0xffba7b0be)
                        : AppStyles.primaryColor,
                    text: AppConstants.follow,
                    textColor: Colors.black)
              ],
            ),
          );
        },
      ),
    );
  }
}
