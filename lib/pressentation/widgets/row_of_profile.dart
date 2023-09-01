import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/app_constants.dart';

class RowOfProfile extends StatelessWidget {
  const RowOfProfile({
    super.key,
    required this.text,
    required this.iconPath,
    this.onTap,
  });

  final String text;
  final String iconPath;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.all(10.h),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          width: 343.w,
          height: 40.h,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: SvgPicture.asset(iconPath),
              ),
              Text(
                text,
                style: TextStyle(
                    fontFamily: AppConstants.fontFamily,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff333333)),
              ),
              const Spacer(),
              Icon(
                  size: 24.w,
                  color: const Color(0xff828282),
                  Icons.arrow_back_ios_new)
            ],
          ),
        ),
      ),
    );
  }
}
