import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_styles.dart';

class ScreenDivider extends StatelessWidget {
  const ScreenDivider({super.key, required this.dividerText});

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 32.h),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: AppStyles.dividerColor,
              thickness: 1.5,
              endIndent: 5,
              indent: 5,
              height: 25,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0.w),
            child: Text(
              dividerText,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: "Tajawal",
                fontSize: 12.sp
              ),
            ),
          ),
          Expanded(
            child: Divider(
              color: AppStyles.dividerColor,
              thickness: 1.5,
              endIndent: 5,
              indent: 5,
              height: 25,
            ),
          ),
        ],
      ),
    );
  }
}
