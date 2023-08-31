import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:tourism_app/utils/app_styles.dart';

class FavouriteIcon extends StatefulWidget {

   const FavouriteIcon({
    super.key,
  });

  @override
  State<FavouriteIcon> createState() => _FavouriteIconState();
}

class _FavouriteIconState extends State<FavouriteIcon> {
  bool isPressed = false;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(right: 1.w),
      child: IconButton(

        color: Colors.grey,
          style: ButtonStyle(
            shape: const MaterialStatePropertyAll(
              CircleBorder()
            ),
            backgroundColor: MaterialStateProperty.all(Colors.transparent.withOpacity(.2))
          ),
        onPressed: () {
          setState(() {
            isPressed = !isPressed;
          });
        },
        icon: Icon(
          IconBroken.Heart,
          color: isPressed ? AppStyles.favColor : Colors.white,
        ),
      ),
    );
  }
}
