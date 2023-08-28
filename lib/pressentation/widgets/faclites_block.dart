import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/app_constants.dart';
class FacilitiesBlock extends StatelessWidget {
  const FacilitiesBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        Row(
          children: [
            SvgPicture.asset('assets/images/Wifi.svg'),
            SizedBox(width: 5.w,),
            Text(
              AppConstants.wifi,
              style: TextStyle(
                fontFamily: AppConstants.fontFamily,
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Spacer(),
            SvgPicture.asset('assets/images/Tv.svg'),
            SizedBox(width: 5.w,),
            Text(
              AppConstants.tv,
              style: TextStyle(
                fontFamily: AppConstants.fontFamily,
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Spacer(),
            SvgPicture.asset('assets/images/Conditioner.svg'),
            SizedBox(width: 5.w,),
            Text(
              AppConstants.conditioner,
              style: TextStyle(
                fontFamily: AppConstants.fontFamily,
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        SizedBox(height: 10.h,),
        Row(
          children: [
            SvgPicture.asset('assets/images/Kitchen.svg'),
            SizedBox(width: 5.w,),
            Text(
              AppConstants.kitchen,
              style: TextStyle(
                fontFamily: AppConstants.fontFamily,
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Spacer(),
            SvgPicture.asset('assets/images/Washer.svg'),
            SizedBox(width: 5.w,),
            Text(
              AppConstants.washingMachine,
              style: TextStyle(
                fontFamily: AppConstants.fontFamily,
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Spacer(),
            SvgPicture.asset('assets/images/Window.svg'),
            SizedBox(width: 5.w,),
            Text(
              AppConstants.window,
              style: TextStyle(
                fontFamily: AppConstants.fontFamily,
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
