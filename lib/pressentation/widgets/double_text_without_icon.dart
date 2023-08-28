import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_constants.dart';

class DoubleTextWithoutIcon extends StatelessWidget {
  const DoubleTextWithoutIcon({super.key,this.onTap});
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.h),
      width: 343.w,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            AppConstants.previousSearches,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 14.sp,
                fontFamily: AppConstants.fontFamily),
          ),
          const Spacer(),
          GestureDetector(
            onTap: onTap,
            child: Text(
              AppConstants.removeAll,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 12.sp,
                  color: const Color(0xff0D6EFD),
                  fontFamily: AppConstants.fontFamily),
            ),
          ),
        ],
      ),
    );
  }
}
