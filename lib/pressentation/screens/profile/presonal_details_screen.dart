import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app/cubit/app_cubit/app_cubit.dart';
import 'package:tourism_app/cubit/app_cubit/app_state.dart';
import 'package:tourism_app/pressentation/widgets/custom_button_with_only_text.dart';
import 'package:tourism_app/utils/app_constants.dart';

import '../../../utils/app_styles.dart';
import '../../widgets/custom_form_field.dart';
import '../../widgets/custom_text_form_with_suffix.dart';

class PersonalDetailsScreen extends StatelessWidget {
  const PersonalDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var nameController = TextEditingController();
    var emailController = TextEditingController();
    var numberController = TextEditingController();
    var dateController = TextEditingController();

    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                AppConstants.completeYourPersonalProfile,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16.sp,
                    fontFamily: AppConstants.fontFamily),
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
                            Center(
                                child: Image.asset('assets/images/Camera.png')),
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
                            fontFamily: AppConstants.fontFamily),
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
                        fontFamily: AppConstants.fontFamily,
                      ),
                    ),
                    CustomFormFieldWithSuffix(
                      controller: nameController,
                      type: TextInputType.name,
                      label: AppConstants.enterFullName,
                      suffixPath: 'assets/images/Profile.svg',
                    ),

                    Text(
                      AppConstants.email,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14.sp,
                        fontFamily: AppConstants.fontFamily,
                      ),
                    ),
                    CustomFormFieldWithSuffix(
                      controller: emailController,
                      type: TextInputType.emailAddress,
                      label: AppConstants.enterYourEmail,
                      suffixPath: "assets/images/EmailIcon.svg",
                    ),
                    Text(
                      AppConstants.yourBirthdate,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14.sp,
                        fontFamily: AppConstants.fontFamily,
                      ),
                    ),
                    CustomFormFieldWithSuffix(
                      suffixPath: "assets/images/Calendar.svg",
                      controller: dateController,
                      type: TextInputType.text,
                      label: AppConstants.enterYourBirthdate,
                    ),
                    Text(
                      AppConstants.yourPhone,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14.sp,
                        fontFamily: AppConstants.fontFamily,
                      ),
                    ),
                    CustomFormField(
                      prefixIconPath: "assets/images/Frame.svg",
                      suffixIconPath: "",
                      controller: numberController,
                      type: TextInputType.phone,
                      label: AppConstants.enterYourPhone,
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Center(
                      child: CustomButtonWithOnlyText(
                          onTap:(){},
                          color: AppStyles.primaryColor,
                          text: AppConstants.follow,
                          textColor: Colors.white),
                    ),
                  ],
                ),
              ),

            ),

          );
        },
      ),
    );
  }
}
