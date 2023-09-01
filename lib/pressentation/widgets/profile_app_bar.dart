import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app/core/helper.dart';
import 'package:tourism_app/utils/app_constants.dart';

import 'custom_icon.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 60,
      right: 16,
      child: SizedBox(
        width: 375.w,
        height: 48.h,
        child: Row(
          children: [
            CustomIcon(
              onTap: () {
                context.pop(context);
              },
              iconWidget: const Icon(
                Icons.arrow_back_outlined,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 90.0),
              child: Text(
                AppConstants.myAccount,
                style: TextStyle(
                    fontFamily: AppConstants.fontFamily,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
