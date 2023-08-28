import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class FavouriteIcon extends StatelessWidget {
  const FavouriteIcon({super.key, this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint("Favourite icon pressed");
      },
      child: Padding(
        padding: EdgeInsets.only(right: 12.w, top: 10.h),
        child: CircleAvatar(
          radius: 15,
          backgroundColor: const Color(0Xff1B1E28).withOpacity(.2),
          child: SvgPicture.asset("assets/images/Heart.svg"),
        ),
      ),
    );
  }
}
