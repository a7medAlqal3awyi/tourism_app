import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app/pressentation/widgets/custom_button_with_only_text.dart';
import 'package:tourism_app/utils/app_constants.dart';
import 'package:tourism_app/utils/app_styles.dart';

class CustomAlertWidget extends StatelessWidget {
  final String imagePath;
  final String message;
  final VoidCallback onButtonPressed;

  const CustomAlertWidget({super.key,
    required this.imagePath,
    required this.message,
    required this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343.w,
      height: 369.h,
      child: Dialog(
        backgroundColor: Colors.white,
        clipBehavior: Clip.antiAliasWithSaveLayer,

        shape: RoundedRectangleBorder(
          side: const BorderSide(
            style: BorderStyle.none,
          ),
          borderRadius: BorderRadius.circular(12.w),
        ),
        child: Container(
          color: Colors.white,

          padding: EdgeInsets.all(20.w),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                imagePath,
                width: 158.0,
                height: 127.0,
              ),
              SizedBox(height: 16.h),
              SizedBox(
                width:284.w,
                child: Text(
                  message,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: AppConstants.fontFamily),
                ),
              ),
              SizedBox(height: 16.h),
              CustomButtonWithOnlyText(
                onTap: onButtonPressed,
                  color: AppStyles.primaryColor, text: AppConstants.complete, textColor: Colors.white)
            ],
          ),
        ),
      ),
    );
  }
}