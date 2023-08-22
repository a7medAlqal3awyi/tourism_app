import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app/utils/app_constants.dart';

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
      body: Column(
        children: [
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
                color: Color(0xffFF7029),
                fontWeight: FontWeight.w700),
          ),

        ],
      ),
    );
  }
}
