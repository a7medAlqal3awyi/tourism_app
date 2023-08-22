import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_constants.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool value=false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          focusColor: Colors.grey,
          checkColor: Colors.white,
          activeColor: Colors.blue,
          onChanged: (value) {
            setState(() {
              value != value;
            });
          },
          shape: const CircleBorder(),
        ),
        Text(
          AppConstants.rememberMe,
          style: TextStyle(
              fontFamily: "Tajawal",
              fontWeight: FontWeight.w500,
              fontSize: 14.sp),
        ),
      ],
    );
  }
}
