import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tourism_app/utils/app_constants.dart';

import '../../utils/app_styles.dart';

Widget CustomFormField({
  required TextEditingController controller,
  required TextInputType type,
  onSubmit,
  onChange,
  onTap,
  bool isPassword = false,
  String? Function(String?)? validator,
  required String label,
  validate,
   String? prefixIconPath,
  suffixIconPath,
  void Function()? suffixPressed,
}) =>
    Padding(
      padding: EdgeInsets.symmetric(vertical: 15.h,horizontal: 5.w),
      child: Container(
        color: Colors.grey.withOpacity(.07),
        child: TextFormField(
          controller: controller,
          keyboardType: type,
          obscureText: isPassword,
          onChanged: onChange,
          onFieldSubmitted: onSubmit,
          validator: validate,
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: EdgeInsets.only(top:15.h,
                  bottom: 15.h,
                  left:7.w),
              child: SvgPicture.asset(
                prefixIconPath!,
              ),
            ),
            suffixIcon: Padding(
                padding: EdgeInsets.symmetric(vertical:15.w),
                child: SvgPicture.asset(
                  suffixIconPath!,
                  color: Colors.grey,
                )),
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

