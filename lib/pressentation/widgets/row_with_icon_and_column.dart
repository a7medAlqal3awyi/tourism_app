import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tourism_app/utils/app_constants.dart';
import 'package:tourism_app/utils/app_styles.dart';


class RowWithIconAndColumn extends StatelessWidget {
  const RowWithIconAndColumn(
      {super.key,
      required this.iconPath,
      required this.firstText,
      required this.secondText,
     required this.onTap});

  final String iconPath;
  final String firstText;
  final String secondText;
  final void Function()? onTap;



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 342.w,
        height: 92.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.w),
          color: const Color(0XFFFAFAFA),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 64.w,
              height: 64.h,
              child: CircleAvatar(
                backgroundColor: const Color(0xffF2F2F2),
                child: SvgPicture.asset(
                  iconPath
                ),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  firstText,
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color:  Colors.black,
                      fontFamily: AppConstants.fontFamily,),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  secondText,
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color:  Colors.black,
                      fontFamily: AppConstants.fontFamily,),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
