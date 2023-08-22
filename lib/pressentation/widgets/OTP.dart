import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

import '../../utils/app_styles.dart';

class OTPWidget extends StatelessWidget {
  const OTPWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return OtpPinField(
        fieldHeight: 54.h,
        fieldWidth: 54.w,

        onSubmit: (String text) {},
        onChange: (String text) {},
        otpPinFieldInputType: OtpPinFieldInputType.none,
        keyboardType: TextInputType.number,
        showCursor: false,
        textInputAction: TextInputAction.done,
        otpPinFieldStyle: OtpPinFieldStyle(
          defaultFieldBackgroundColor: Colors.grey.withOpacity(.08),
          filledFieldBackgroundColor: Colors.grey.withOpacity(.08),
          activeFieldBackgroundColor: Colors.white60,
          activeFieldBorderColor: AppStyles.Primary,
          fieldPadding: 10,

          fieldBorderRadius: 12.w,
          textStyle: TextStyle(
            fontFamily: "Tajawal",
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
          ),

        ),
        cursorWidth: 2,
        mainAxisAlignment: MainAxisAlignment.center,
        otpPinFieldDecoration: OtpPinFieldDecoration.custom)

    ;
  }
}
