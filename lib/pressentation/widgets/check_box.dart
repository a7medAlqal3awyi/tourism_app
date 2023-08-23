import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCheckBox extends StatefulWidget {
  final String title;

  const CustomCheckBox({
    Key? key,
    required this.title,
  }) : super(
          key: key,
        );

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool? check = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: check,
          focusColor: Colors.grey,
          checkColor: Colors.white,
          activeColor: Colors.blue,
          onChanged: (bool? value) {
            setState(() {
              check = value;
            });
          },
          shape: const CircleBorder(),
        ),
        Text(
          widget.title,
          style: TextStyle(
              fontFamily: "Tajawal",
              fontWeight: FontWeight.w500,
              fontSize: 14.sp),
        ),
      ],
    );
  }
}
