import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tourism_app/utils/app_constants.dart';
import 'package:tourism_app/utils/app_styles.dart';

import '../widgets/chat_bubble.dart';
import '../widgets/send_message_to_company.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            Text(
              AppConstants.futureCompany,
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w800,
                  fontFamily: AppConstants.fontFamily,
                  color: AppStyles.primaryColor),
            ),
            Text(
              AppConstants.activeNow,
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  fontFamily: AppConstants.fontFamily,
                  color: AppStyles.favColor),
            ),
          ],
        ),
        actions: [
          SvgPicture.asset('assets/images/Phone.svg'),
          SizedBox(
            width: 20.w,
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20.h,
          ),

          Container(
            width: 59.w,
            height: 30.h,
            decoration: BoxDecoration(
                color: const Color(0xffF7F7F9),
                borderRadius: BorderRadius.circular(8.sp)),
            child: Center(
              child: Text(
                AppConstants.today,
                style: TextStyle(
                    fontFamily: AppConstants.fontFamily,
                    fontWeight: FontWeight.w500,
                    fontSize: 12.sp,
                    color: const Color(0xff7D848D)),
              ),
            ),
          ),
          SizedBox(
            height: 220.h,
          ),
          ChatBubbleForFriend(
            message: AppConstants.hello,
            time: AppConstants.time,
          ),
          ChatBubble(
            message: AppConstants.hello,
          ),

          ChatBubbleForFriend(
            message: AppConstants.thank,
            time: AppConstants.time,
          ),
          //
          ChatBubble(
            message: AppConstants.iamGlab,
          ),
          SizedBox(
            height: 40.h,
          ),
          const SendMessageToCompanyRow(),
        ],
      ),
    );
  }
}
