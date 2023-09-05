import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:icon_broken/icon_broken.dart';

import '../../utils/app_constants.dart';
import '../../utils/app_styles.dart';
class RoOfSearchResult extends StatelessWidget {
  const RoOfSearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return             Container(
      width:343.w,
      height: 50.h,
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal:5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            AppConstants.searchResult32,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 12.sp,
                fontFamily: AppConstants.fontFamily),
          ),
          const Spacer(),
          SvgPicture.asset('assets/images/Horizontal.svg'),
          SizedBox(width: 5.w,),
          Icon(
            IconBroken.Category,
            color: AppStyles.primaryColor,
            size: 20,
          ),


        ],
      ),
    );
  }
}
