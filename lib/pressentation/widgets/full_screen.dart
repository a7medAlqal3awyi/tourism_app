import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:full_screen_image_null_safe/full_screen_image_null_safe.dart';
import 'package:tourism_app/core/helper.dart';
import 'package:tourism_app/data/model/suggestion_model.dart';

import 'custom_icon.dart';

Widget fullScreenImage(SuggestionModel suggestionModel, BuildContext context) =>
    FullScreenWidget(
      child: Stack(
        children: [
          SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                suggestionModel.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 53,
            right: 20,
            child: IconButton(
              onPressed: () {
                context.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_outlined,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
              top: 53.h,
              left: 162.w,
              child: Center(child: Image.asset('assets/images/w360.png'))),
          Positioned(
            top: 365,
            left: 0,
            child: Container(
              width: 40.w,
              height: 83.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(18.w),
                  bottomRight: Radius.circular(18.w),),

                  color: Colors.white.withOpacity(.25)),
              child: SvgPicture.asset('assets/images/Before.svg'),
            ),
          ),
          Positioned(
            top: 365,
            right: 0,
            child: GestureDetector(
              onTap: (){
                fullScreenImage(suggestionModel, context);
              },
              child: Container(
                width: 40.w,
                height: 83.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                   bottomLeft: Radius.circular(18.w),
                      topLeft: Radius.circular(18.w),),

                    color: Colors.white.withOpacity(.25)),
                child: SvgPicture.asset('assets/images/Next.svg'),
              ),
            ),
          ),



          Positioned(
            top: 573.h,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 58.w,
                    height: 63.h,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 3.w,
                      ),
                      borderRadius: BorderRadius.circular(12.w),
                    ),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1579305796288-c534f6cf17ab?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 58.w,
                    height: 63.h,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 3.w,
                        ),
                        borderRadius: BorderRadius.circular(12.w),

                    ),
                    child: Image.network(
                        fit: BoxFit.cover,
                        'https://images.unsplash.com/photo-1580418827493-f2b22c0a76cb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1587&q=80'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 58.w,
                    height: 63.h,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 3.w,
                      ),
                      borderRadius: BorderRadius.circular(12.w),
                    ),
                    child: Image.network(
                        fit: BoxFit.cover,
                        'https://images.unsplash.com/photo-1627728734379-a5f8c099763e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
