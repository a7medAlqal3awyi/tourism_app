import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_constants.dart';
class RowOfTextAndXIcon extends StatelessWidget {
  const RowOfTextAndXIcon({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return   Container(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      width: 343.w,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            text,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12.sp,
                color: const Color(0xff828282),
                fontFamily: AppConstants.fontFamily),
          ),
          const Spacer(),
          const Icon(Icons.close,
            color: Color(0xff828282),
            size: 16,
          )
        ],
      ),
    );
  }
}
