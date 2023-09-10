import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tourism_app/cubit/login_cubit/login_cubit.dart';

class RowOfGFA extends StatelessWidget {
  const RowOfGFA({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 157.w,
      height: 43.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12.w)),
              width: 43.w,
              height: 43.h,
              child: SvgPicture.asset("assets/images/BlackApple.svg"),
            ),
          ),
          InkWell(
            onTap: () {
              AppLoginCubit.get(context).signInWithGoogle(context);
            },
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12.w)),
              width: 43.w,
              height: 43.h,
              child: SvgPicture.asset("assets/images/BlueGoogle.svg"),
            ),
          ),
          Container(
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(12.w)),
            width: 43.w,
            height: 43.h,
            child: SvgPicture.asset("assets/images/BlueFacebook.svg"),
          ),
        ],
      ),
    );
  }
}
