import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/app_constants.dart';
import '../../utils/app_styles.dart';

class SendMessageToCompanyRow extends StatelessWidget {
  const SendMessageToCompanyRow({super.key});

  @override
  Widget build(BuildContext context) {
    return           Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal:10.w),
            height: 48.h,
            color: const Color(0xffF7F7F9),
            child: Row(
              children: [
                Text(
                  AppConstants.writeYourMessageNew,
                  style: TextStyle(
                      fontFamily: AppConstants.fontFamily,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff7D848D)),
                ),
                SizedBox(
                  width: 100.w,
                ),
                SvgPicture.asset('assets/images/Link.svg')
              ],
            ),
          ),
          const Spacer(),
          CircleAvatar(
            radius: 24,
            backgroundColor: AppStyles.primaryColor,
            child: const Icon(
              Icons.mic,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
    )
      ;
  }
}
