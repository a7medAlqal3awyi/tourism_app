import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_styles.dart';
class ImageProfileWhenCalling extends StatelessWidget {
  const ImageProfileWhenCalling({super.key});

  @override
  Widget build(BuildContext context) {
    return             Padding(
      padding:  EdgeInsets.symmetric(vertical: 80.h),
      child: Container(

        width: 115.w,
        height: 115.h,

        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: AppStyles.primaryColor.withOpacity(.1),
                  spreadRadius: 5,
                  blurRadius: 20,
                  offset: Offset.zero),
              BoxShadow(
                  color: AppStyles.primaryColor.withOpacity(.1),
                  spreadRadius: 5,
                  blurRadius: 20,
                  offset: Offset.zero),

              BoxShadow(
                  color: AppStyles.primaryColor.withOpacity(.1),
                  spreadRadius: 5,
                  blurRadius: 20,
                  offset: Offset.zero),
              BoxShadow(
                  color: AppStyles.primaryColor.withOpacity(.1),
                  spreadRadius: 5,
                  blurRadius: 20,
                  offset: Offset.zero),
              BoxShadow(
                  color: AppStyles.primaryColor.withOpacity(.08),
                  spreadRadius: 5,
                  blurRadius: 20,
                  offset: Offset.zero),
              BoxShadow(
                  color: AppStyles.primaryColor.withOpacity(.08),
                  spreadRadius: 5,
                  blurRadius: 20,
                  offset: Offset.zero),
              BoxShadow(
                  color: AppStyles.primaryColor.withOpacity(.08),
                  spreadRadius: 5,
                  blurRadius: 20,
                  offset: Offset.zero),
              BoxShadow(
                  color: AppStyles.primaryColor.withOpacity(.05),
                  spreadRadius: 5,
                  blurRadius: 20,
                  offset: Offset.zero),
              BoxShadow(
                  color: AppStyles.primaryColor.withOpacity(.05),
                  spreadRadius: 5,
                  blurRadius: 20,
                  offset: Offset.zero),
              BoxShadow(
                  color: AppStyles.primaryColor.withOpacity(.05),
                  spreadRadius: 5,
                  blurRadius: 20,
                  offset: Offset.zero),




            ],
            shape: BoxShape.circle,
            image: const DecorationImage(
                image: AssetImage(
                    'assets/images/ahmed.jpg'
                )
            )
        ),
      ),
    )
    ;
  }
}
