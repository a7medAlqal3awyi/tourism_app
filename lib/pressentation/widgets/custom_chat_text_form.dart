import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/app_constants.dart';
import '../../utils/app_styles.dart';
class CustomTextChat extends StatelessWidget {
  const CustomTextChat({super.key});

  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        decoration: InputDecoration(
            suffixIcon: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:AppStyles.primaryColor,

                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset('assets/images/Send.svg'),
                  )),
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.w),
                borderSide: BorderSide(
                    color: Colors.grey..withOpacity(.1)
                )
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.w),
                borderSide: BorderSide(
                    color: Colors.grey..withOpacity(.1)
                )
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.w),
                borderSide: BorderSide(
                    color: Colors.grey..withOpacity(.1)
                )
            ),
            hintText: "اكتب تعليقاً",
            hintStyle: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
                fontFamily: AppConstants.fontFamily
            )
        ),
      ),
    );
  }
}
