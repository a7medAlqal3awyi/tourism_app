import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tourism_app/utils/app_constants.dart';

import '../../utils/app_styles.dart';

class CustomFormFieldWithSuffix extends StatelessWidget {
   CustomFormFieldWithSuffix(
      {super.key,
      required this.controller,
      required this.suffixPath,
      required this.label,
      required this.type,
      this.onChanged,
       this.inSubmit,
      this.validate});

  final TextEditingController controller;
  final String suffixPath;
  final String label;
  final TextInputType type;
   void Function(String)? onChanged;
   void Function(String)? inSubmit;
   String? Function(String?)? validate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 10.w),
      child: Container(
        color: Colors.grey.shade100,
        child: TextFormField(
          controller: controller,
          keyboardType: type,
          onChanged: onChanged,
          onFieldSubmitted: inSubmit,
          validator: validate,
          decoration: InputDecoration(
            suffixIcon: Padding(
              padding:  EdgeInsets.all(15.w),
              child: SvgPicture.asset(suffixPath),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.w),
            ),
            hintText: label,
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  color: Colors.grey, width: 0, style: BorderStyle.none),
              borderRadius: BorderRadius.circular(8.w),
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.w),
                borderSide: BorderSide(
                  color: AppStyles.primaryColor,
                )),
            hintStyle: TextStyle(
              fontFamily: AppConstants.fontFamily,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
