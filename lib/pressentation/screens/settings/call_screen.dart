import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app/utils/app_constants.dart';
import 'package:tourism_app/utils/app_styles.dart';

import '../../widgets/call_screen_bottom_actions.dart';
import '../../widgets/image_profile_on_calling.dart';
class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20.h,),
            Text(AppConstants.futureCompany,
            style: TextStyle(
              fontFamily: AppConstants.fontFamily,
              fontWeight: FontWeight.w700,
              color: AppStyles.primaryColor,
              fontSize: 28.sp
            ),),
            SizedBox(height: 10.h,),

            Container(
              width: 49.w,
              height: 24.h,
              decoration: BoxDecoration(
                color: AppStyles.favColor,
                borderRadius: BorderRadius.circular(100.w)
              ),
              child: Center(
                child: Text("12:55",
                style: TextStyle(
                  fontFamily: AppConstants.fontFamily,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 10.sp
                ),),
              ),
            ),
            const ImageProfileWhenCalling(),
            const CallScreenBottomActions()
          ],
        ),
      ),

    );
  }
}
