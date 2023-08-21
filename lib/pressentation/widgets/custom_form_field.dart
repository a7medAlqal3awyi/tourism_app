import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/app_styles.dart';

class CustomFormField extends StatelessWidget {
  CustomFormField({
        super.key,
      this.onFieldSubmitted,
      this.validator,
      this.onTap,
      this.suffixIconPath,
      required this.textInputType,
      required this.prefixIconPath,
      required this.hitText,
      required this.textEditingController,});

  final String prefixIconPath;
  String ? suffixIconPath;
  final String hitText;
  final TextEditingController textEditingController;
  void Function()? onTap;
  String? Function(String?)? validator;
  TextInputType textInputType;
  void Function(String)? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 70.h,
      margin: EdgeInsets.all(10.w),
      color: Colors.grey.shade100,
      padding: EdgeInsets.all(8.0.w),
      child: TextFormField(
        controller: textEditingController,
        onTap: onTap,
        validator: validator,
        keyboardType: textInputType,
        onFieldSubmitted: onFieldSubmitted,
        decoration: InputDecoration(
          prefixIcon: Padding(
              padding: EdgeInsets.all(8.w),
              child: SvgPicture.asset(
               prefixIconPath,
                color: Colors.grey,
              )),
          suffixIcon: Padding(
              padding: EdgeInsets.all(8.w),
              child: SvgPicture.asset(
                suffixIconPath!,
                color: Colors.grey,
              )),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.w),
          ),
          hintText: hitText,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color: Colors.grey, width: 0, style: BorderStyle.none),
            borderRadius: BorderRadius.circular(8.w),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.w),
              borderSide: BorderSide(
                color: AppStyles.Primary,
              )),
          hintStyle: TextStyle(
            fontFamily: 'Tajawal',
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),

          // prefixIcon:
        ),
      ),
    );
  }
}
