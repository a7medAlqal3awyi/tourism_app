import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonWithOnlyText extends StatelessWidget {
  final Color color;
  final Color textColor;

  final String text;

  final void Function()? onTap;

  const CustomButtonWithOnlyText({
    super.key,
    this.onTap,
    required this.color,
    required this.text,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48.h,
        width: 343.w,
        padding: EdgeInsets.symmetric(vertical: 12.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.w),
          color: color,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: textColor,
                fontSize: 15.sp,
                fontFamily: "Tajawal",
              ),
            )
          ],
        ),
      ),
    );
  }
}
