import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app/utils/app_constants.dart';

class CustomAlert extends StatelessWidget {
  const CustomAlert({super.key, required this.txt, required this.imagePath, required this.actions});

  final String txt;
  final String imagePath;
  final List<Widget> actions;
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: AlertDialog(
        elevation: 0,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.w))),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(imagePath),
            Text(
              txt,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 17.6.sp,
                  fontWeight: FontWeight.w700,
                  fontFamily: AppConstants.fontFamily),
            ),
          ],
        ),
        actions: actions,
      ),
    );
  }
}
