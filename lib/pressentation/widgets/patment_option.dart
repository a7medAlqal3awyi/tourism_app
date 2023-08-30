import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app/pressentation/widgets/check_box.dart';

import '../../utils/app_constants.dart';
class PaymentOptions extends StatelessWidget {
  const PaymentOptions({super.key, required this.imagePath, required this.txt});

  final String imagePath;
  final String txt ;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 44.w,
          height: 44.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.w),
              color: Colors.grey,
              image: DecorationImage(
                  image: AssetImage(
                    imagePath,
                  )
              )
          ),
        ),
        SizedBox(width: 10.w,),
        Text(
          txt,
          style: TextStyle(
            fontFamily: AppConstants.fontFamily,
            fontWeight: FontWeight.w700,
            fontSize: 16.sp,
          ),
        ),
      ],

    );
  }
}
