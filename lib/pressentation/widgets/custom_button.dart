import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final Color textColor;

  final String text;

  final String? imagePath;
  CustomButton({
    super.key,
    this.imagePath,
    this.onTap,
    required this.color,
    required this.text,
    required this.textColor,
  });


  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
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
            SvgPicture.asset(
              '$imagePath',
              width: 21.w,
              height: 20.h,
            ),
            SizedBox(
              width: 10.w,
            ),
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
