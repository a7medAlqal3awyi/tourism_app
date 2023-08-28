import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tourism_app/core/helper.dart';

import 'custom_icon.dart';
class DetailsAppBar extends StatelessWidget {
  const DetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return             Positioned(
      top: 40,
      right: 16,

      child: SizedBox(
        width:343.w ,
        height: 36.h,
        child: Row(
          children: [
            CustomIcon(
              onTap: () {
                context.pop(context);
              },
              iconWidget: const Icon(
                Icons.arrow_back_outlined,
                color: Colors.white,
              ),
            ),
            const Spacer(),
            CustomIcon(
              iconWidget: SvgPicture.asset("assets/images/Heart.svg"),
            ),
            SizedBox(width: 20.w,),
            CustomIcon(
              iconWidget: SvgPicture.asset("assets/images/Share.svg"),
            ),


          ],
        ),
      ),
    );
  }
}
