import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tourism_app/core/helper.dart';
import 'package:tourism_app/data/model/suggestion_model.dart';
import 'package:tourism_app/pressentation/screens/vendor_profile.dart';
import 'package:tourism_app/pressentation/widgets/custom_button_with_only_text.dart';
import 'package:tourism_app/pressentation/widgets/related_image.dart';
import 'package:tourism_app/utils/app_constants.dart';
import 'package:tourism_app/utils/app_styles.dart';

import '../../widgets/details_app_bar.dart';
import '../../widgets/full_screen.dart';
import '../book_date.dart';
import '../rates_screen.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    super.key,
    required this.suggestionModel,
  });

  final SuggestionModel suggestionModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
              children: [
            Transform.scale(
              scale: 1.17,
              child: Container(
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(suggestionModel.image))),
              ),
            ),
            const DetailsAppBar(),
          ]
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,

                borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.w),
                topRight: Radius.circular(40.w),
              )
            ),
            child: Padding(
              padding: EdgeInsets.all(
                8.h

              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Padding(
                          padding:  EdgeInsets.only(top:15.0.h,bottom: 20.h),
                          child: Container(
                            width: 36.w,
                            height: 5.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.w),

                                color: const Color.fromRGBO(125, 132, 141, 1)
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                suggestionModel.title,
                                style: TextStyle(
                                    fontFamily: AppConstants.fontFamily,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 24.sp),
                              ),
                              GestureDetector(
                                onTap: (){
                                  context.push(VendorProfileScreen(
                                    suggestionModel: suggestionModel,
                                  ));
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 30.w,
                                      height: 30.h,
                                      child: const CircleAvatar(
                                        foregroundImage: AssetImage(
                                            "assets/images/ahmed.jpg"),
                                        radius: 20,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Text(
                                      suggestionModel.name,
                                      style: TextStyle(
                                          color: const Color(0xff7D848D),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14.sp,
                                          fontFamily: "Tajawal"),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "5000",
                                style: TextStyle(
                                  fontFamily: AppConstants.fontFamily,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w700,
                                  color: AppStyles.Primary,
                                ),
                              ),
                              Text(
                                "/فرد",
                                style: TextStyle(
                                  fontFamily: AppConstants.fontFamily,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xff828282),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset("assets/images/Location.svg"),
                          Text(
                            suggestionModel.location,
                            style: TextStyle(
                              fontFamily: AppConstants.fontFamily,
                              fontWeight: FontWeight.w700,
                              fontSize: 12.sp,
                              color: const Color(0xff828282),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              context.push(RatesScreen(suggestionModel: suggestionModel,));
                            },
                            child: Wrap(
                              children: [

                                Padding(
                                  padding: EdgeInsets.only(right: 8.w, left: 5.w),
                                  child: const Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Color(0xffFFD336),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.w),
                                  child: Text(
                                    "${suggestionModel.rate}",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp,
                                        fontFamily: AppConstants.fontFamily),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.w),
                                  child: Text(
                                    "(2465)",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp,
                                        color: AppStyles.Primary,
                                        fontFamily: AppConstants.fontFamily),
                                  ),
                                ),

                              ],

                            ),
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              context.push(fullScreenImage(
                                  suggestionModel, context));
                            },
                            child: Container(
                              width: 40.w,
                              height: 40.h,
                              decoration: const BoxDecoration(
                                color: Color(0xffFAFAFA),
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                  child: SvgPicture.asset(
                                      "assets/images/360.svg")),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  RelatedImage(
                    imagePath: suggestionModel.image,
                  ),
                  SizedBox(height: 10.h),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      AppConstants.aboutJourney,
                      style: TextStyle(
                          fontFamily: AppConstants.fontFamily,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: AppConstants.aboutJourneyDescription,
                      style: TextStyle(
                          height: 1.6,
                          fontFamily: AppConstants.fontFamily,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff828282)),
                      children: [
                        TextSpan(
                          text: AppConstants.showMore,
                          style: TextStyle(
                              fontFamily: AppConstants.fontFamily,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w800,
                              color: const Color(0xFFFF7029)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomButtonWithOnlyText(
                    onTap: (){
                      context.push(BookDateScreen());
                    },
                      color: AppStyles.Primary,
                      text: AppConstants.bookNow,
                      textColor: Colors.white),
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
