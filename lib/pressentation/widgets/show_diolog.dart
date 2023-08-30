import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app/core/helper.dart';
import 'package:tourism_app/pressentation/widgets/custom_button_with_only_text.dart';
import 'package:tourism_app/utils/app_constants.dart';
import 'package:tourism_app/utils/app_styles.dart';

import '../screens/home/home.dart';

class ShowDiaolog extends StatelessWidget {
  const ShowDiaolog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      color: Colors.white70,
      child: AlertDialog(
        surfaceTintColor: Colors.white,
        elevation: 10,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("assets/images/Done.png"),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "تم إعادة تعيين كلمة المرور بنجاح",
              style: TextStyle(
                  fontSize: 14.sp,
                  fontFamily: "Tajawal",
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomButtonWithOnlyText(
              onTap: (){
                Navigator.of(context).pop();
                context.pushAndRemove( HomeScreen());
              },
              color: AppStyles.primaryColor,
              text: "استمر",
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
