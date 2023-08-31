import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app/core/helper.dart';
import 'package:tourism_app/pressentation/screens/home/details_screen.dart';
import 'package:tourism_app/pressentation/widgets/suggestion_item.dart';
import 'package:tourism_app/utils/app_constants.dart';
import 'package:tourism_app/utils/app_styles.dart';

import '../../data/model/suggestion_model.dart';

class CustomTapBar extends StatefulWidget {
  const CustomTapBar({super.key});

  @override
  State<CustomTapBar> createState() => _CustomTapBarState();
}

class _CustomTapBarState extends State<CustomTapBar>
    with SingleTickerProviderStateMixin
    implements TickerProvider {
  @override
  Ticker createTicker(TickerCallback onTick) => Ticker(onTick);

  @override
  Widget build(BuildContext context) {
    final List<SuggestionModel> suggestions = [
      SuggestionModel(
          name: AppConstants.azkaSafaHotel,
          image:
          "https://th.bing.com/th/id/R.a0b057e83a341e92941b9f2c494c6ab1?rik=fplOLhvDYEZBPg&pid=ImgRaw&r=0",
          title: AppConstants.labikOmraa,
          location: AppConstants.makaaSudia,
          rate: 4.9),
      SuggestionModel(
          name: AppConstants.alqibla,
          image:
          "https://images.unsplash.com/photo-1594970484107-5ac7d46a7259?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1548&q=80",
          title: AppConstants.aqsaDes,
          location: AppConstants.aqsaLoc, rate: 4.8),
      SuggestionModel(
          name: AppConstants.azkaSafaHotel,

          image:
          "https://images.unsplash.com/photo-1513072064285-240f87fa81e8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1527&q=80",
          title: AppConstants.labikOmraa,
          location: AppConstants.makaaSudia, rate: 4.7),
      SuggestionModel(
          name: AppConstants.alsa3aHotel,
          image:
          "https://th.bing.com/th/id/OIP.h2fnjkdyQopo0_YV7wsKeAAAAA?pid=ImgDet&rs=1",
          title: AppConstants.labikOmraa,
          location: AppConstants.makaaSudia, rate: 5),

    ];

    TabController tapController =
        TabController(length: suggestions.length, vsync: this);
    return Column(
      children: [
        SizedBox(
          height: 30.h,
          child: TabBar(
              isScrollable: true,
              indicatorColor: AppStyles.primaryColor,
              labelColor: AppStyles.primaryColor,
              unselectedLabelColor: const Color(0xffBDBDBD),
              labelStyle: TextStyle(
                  fontFamily: AppConstants.fontFamily,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700),
              controller: tapController,
              tabs: [
                Tab(
                  text: AppConstants.suggestedForYou,
                ),
                Tab(
                  text: AppConstants.inTourism,
                ),
                Tab(
                  text: AppConstants.outTourism,
                ),
                Tab(
                  text: AppConstants.honeymoon,
                ),
              ]),
        ),
        Padding(
          padding:  EdgeInsets.only(top: 10.h),
          child: SizedBox(
            height: 397.h,
            child: TabBarView(

              controller: tapController,
              children: [
                SizedBox(
                  height: 397.h,
                  child: ListView.builder(
                    itemBuilder: (context, index) =>
                        GestureDetector(
                      onTap: (){
                        context.push( DetailsScreen(
                          suggestionModel: suggestions[index],
                        ));
                        },
                      child: SuggestionItem(
                        model: suggestions[index],

                      ),
                    ),
                    physics: const BouncingScrollPhysics(),
                    itemCount: suggestions.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                  ),
                ),
                SizedBox(
                  height: 397.h,
                  child: ListView.builder(
                    itemBuilder: (context, index) => SuggestionItem(
                      model: suggestions[index],
                    ),
                    physics: const BouncingScrollPhysics(),
                    itemCount: suggestions.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                  ),
                ),
                SizedBox(
                  height: 397.h,
                  child: ListView.builder(
                    itemBuilder: (context, index) => SuggestionItem(
                      model: suggestions[index],
                    ),
                    physics: const BouncingScrollPhysics(),
                    itemCount: suggestions.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                  ),
                ),
                SizedBox(
                  height: 397.h,
                  child: ListView.builder(
                    itemBuilder: (context, index) => SuggestionItem(
                      model: suggestions[index],
                    ),
                    physics: const BouncingScrollPhysics(),
                    itemCount: suggestions.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
