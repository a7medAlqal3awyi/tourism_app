import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/app_constants.dart';

class RelatedImage extends StatelessWidget {
  const RelatedImage({super.key, required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 10.w,
        ),
        Container(
          width: 42.w,
          height: 42.h,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imagePath)),
              borderRadius: BorderRadius.circular(12.w)),
        ),
        SizedBox(
          width: 15.w,
        ),
        Container(
          width: 42.w,
          height: 42.h,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imagePath)),
              borderRadius: BorderRadius.circular(12.w)),
        ),
        SizedBox(
          width: 15.w,
        ),
        Container(
          width: 42.w,
          height: 42.h,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imagePath)),
              borderRadius: BorderRadius.circular(12.w)),
        ),
        SizedBox(
          width: 15.w,
        ),
        Container(
          width: 42.w,
          height: 42.h,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imagePath)),
              borderRadius: BorderRadius.circular(12.w)),
        ),
        SizedBox(
          width: 15.w,
        ),
        Container(
          width: 42.w,
          height: 42.h,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imagePath)),
              borderRadius: BorderRadius.circular(12.w)),
        ),
        SizedBox(
          width: 15.w,
        ),
        Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 9.w),
              child: Container(
                width: 42.w,
                height: 42.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(imagePath)),
                    borderRadius: BorderRadius.circular(12.w)),
              ),
            ),
            Positioned(
              top: 15,
              left: 15,
              child: Text(
                "16+",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    color: Colors.white,
                    fontFamily: AppConstants.fontFamily),
              ),
            )
          ],
        ),
      ],
    );
  }
}
