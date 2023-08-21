import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_styles.dart';

class TextAndTextButton extends StatelessWidget {
  const TextAndTextButton(
      {super.key, required this.txt, required this.txtButton});

  final String txt;
  final String txtButton;

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
            onPressed: () {},
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
