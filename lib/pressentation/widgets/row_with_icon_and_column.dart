import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';


class RowWithIconAndColumn extends StatelessWidget {
  const RowWithIconAndColumn(
      {super.key,
      required this.iconPath,
      required this.firstText,
      required this.secondText});

  final String iconPath;
  final String firstText;
  final String secondText;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    fontFamily: "tajawal"),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                secondText,
                style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                    fontFamily: "tajawal"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
