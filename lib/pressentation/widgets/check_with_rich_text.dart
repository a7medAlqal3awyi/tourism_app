import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app/utils/app_constants.dart';
import 'package:tourism_app/utils/app_styles.dart';
class CheckBoxWithRichText extends StatefulWidget {
  const CheckBoxWithRichText({super.key});

  @override
  State<CheckBoxWithRichText> createState() => _CheckBoxWithRichTextState();
}

class _CheckBoxWithRichTextState extends State<CheckBoxWithRichText> {
  bool? check = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0,),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Checkbox(
            value: check,
            focusColor: Colors.grey,
            checkColor: Colors.white,
            activeColor: Colors.blue,
            onChanged: (bool? value) {
              setState(() {
                check=value;
              });
            },
            shape: const CircleBorder(),
          ),
          Expanded(
            child: RichText(
              maxLines: 2,
                text: TextSpan(
              text: AppConstants.whileYouCreateNewAcc,

              style: TextStyle(
                fontFamily: "Tajawal",
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
                color: Colors.black
              ),
                  children: [
                    TextSpan(
                      text: AppConstants.ourConstrains,
                      style: TextStyle(
                        color: AppStyles.Primary,
                        fontFamily: "Tajawal",

                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,

                      ),
                    )
                  ]

            ),
            ),
          ),
        ],
      ),
    );
  }
}
