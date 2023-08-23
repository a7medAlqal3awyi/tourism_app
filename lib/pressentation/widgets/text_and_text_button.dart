import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_styles.dart';

class TextAndTextButton extends StatelessWidget {
   TextAndTextButton(
      {super.key, this.onPressed, required this.txt, required this.txtButton});

  final String txt;
  final String txtButton;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      textBaseline: TextBaseline.ideographic,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          txt,
          style: TextStyle(
            fontFamily: "Tajawal",
            fontWeight: FontWeight.w700,
            fontSize: 12.sp,
          ),
        ),
        TextButton(
            onPressed: onPressed,
            child: Text(
              txtButton,
              style: TextStyle(
                  fontFamily: "Tajawal",
                  fontWeight: FontWeight.w700,
                  fontSize: 12.sp,
                  color: AppStyles.Primary),
            ))
      ],
    );
  }
}
