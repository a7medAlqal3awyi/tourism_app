import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.iconWidget, this.onTap});
 final Widget iconWidget;
  final void Function()? onTap ;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: Container(
        width: 36.w,
        height: 36.h,
        decoration: BoxDecoration(
          color: Colors.transparent.withOpacity(.1),
          borderRadius: BorderRadius.circular(24.w),
        ),
        child:  Center(
          child: iconWidget,
        ),
      ),
    )
    ;
  }
}
