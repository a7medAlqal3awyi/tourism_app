import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tourism_app/utils/app_constants.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({
    super.key,
    required this.message,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
        padding:
            EdgeInsets.only(left: 10.w, top: 20.h, bottom: 20.h, right: 10.w),
        decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12.w),
              topRight: Radius.circular(12.w),
              bottomRight: Radius.circular(12.w),
            )),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset('assets/images/Seen.svg'),
            SizedBox(
              width: 5.w,
            ),
            Text(
              AppConstants.time,
              style: TextStyle(
                color: Color(0xff7D848D),
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              width: 12.w,
            ),
            Text(
              message,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatBubbleForFriend extends StatelessWidget {
  const ChatBubbleForFriend({
    super.key,
    required this.message, required this.time,
  });

  final String message;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
        padding:
            EdgeInsets.only(left: 8.w, top: 20.h, bottom: 20.h, right: 8.w),
        decoration: BoxDecoration(
          color: const Color(0xffE5F4FF),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12.w),
            topRight: Radius.circular(12.w),
            bottomLeft: Radius.circular(12.w),
          ),
        ),
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.7,
        ),
        child: Column(
          children: [
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Align(
                    widthFactor: 2,
                    alignment:Alignment.bottomRight
                    ,child: SvgPicture.asset('assets/images/Seen.svg')),

                RichText(
                  textAlign: TextAlign.end,
                  textDirection: TextDirection.rtl,
                  text: TextSpan(
                      children: [
                        TextSpan(
                            text: message,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            )
                        ),
                        TextSpan(
                             text:time,
                            style: TextStyle(
                              color: const Color(0xff7D848D),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            )
                        ),
                      ]
                  ),
                ),




              ],
            ),
          ],
        ),
      ),
    );
  }
}
