import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

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
        color: Colors.grey.shade100,
        child: TextFormField(
          controller: controller,
          keyboardType: type,
          obscureText: isPassword,
          onChanged: onChange,
          onFieldSubmitted: onSubmit,
          validator: validate,
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(vertical:15.w),
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
                  color: AppStyles.Primary,
                )),
            hintStyle: TextStyle(
              fontFamily: 'Tajawal',
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );

// class CustomFormField extends StatelessWidget {
//   CustomFormField({
//     super.key,
//     this.onFieldSubmitted,
//     this.validator,
//     this.onTap,
//     this.suffixIconPath,
//     this.isPassword,
//     required this.textInputType,
//     required this.prefixIconPath,
//     required this.hitText,
//     required this.textEditingController,
//   });
//
//   final String prefixIconPath;
//   String? suffixIconPath;
//   final String hitText;
//   final TextEditingController textEditingController;
//   void Function()? onTap;
//   String? Function(String?)? validator;
//   TextInputType textInputType;
//   void Function(String)? onFieldSubmitted;
//   bool? isPassword;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 343.w,
//       height: 70.h,
//       margin: EdgeInsets.all(10.w),
//       color: Colors.grey.shade100,
//       padding: EdgeInsets.all(8.0.w),
//       child: TextFormField(
//         controller: textEditingController,
//         obscureText: isPassword!,
//         onTap: onTap,
//         validator: validator,
//         keyboardType: textInputType,
//         onFieldSubmitted: onFieldSubmitted,
//       ),
//     );
//   }
// }
