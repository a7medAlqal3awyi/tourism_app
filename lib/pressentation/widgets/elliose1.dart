import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Ellipse extends StatelessWidget {
  const Ellipse({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.5,
      alignment: Alignment.bottomLeft,
      child: Container(
        height: 230.h,
        width: 280.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.white70,
              const Color(0xFFE0C3FC).withOpacity(.4),
              const Color(0xFFE0C3FC).withOpacity(.4),
              const Color(0xff8EC5FC),
              const Color(0xff8EC5FC),
            ],
          ),
        ),
      ),
    );
  }
}
