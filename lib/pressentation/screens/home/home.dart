import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app/core/helper.dart';
import 'package:tourism_app/cubit/app_cubit/app_cubit.dart';
import 'package:tourism_app/cubit/app_cubit/app_state.dart';
import 'package:tourism_app/pressentation/widgets/double_text.dart';
import 'package:tourism_app/pressentation/widgets/home_appbar.dart';
import 'package:tourism_app/utils/app_constants.dart';

import '../../../data/model/offer_model.dart';
import '../../../data/model/suggestion_model.dart';
import '../../../data/model/watched_later_model.dart';
import '../../widgets/custom_tap_bar.dart';
import '../../widgets/elliose1.dart';
import '../../widgets/home_scearch.dart';
import '../../widgets/hot_offer_widget.dart';
import '../../widgets/othe_offer_item.dart';
import '../../widgets/watched_later_item.dart';
import 'offers_screen.dart';
import 'wated_later_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<OffersModel> offers = [
    OffersModel(
        image:
            'https://th.bing.com/th/id/OIP.IAfW3Uyo9LUn0Zx7qu-rfgHaE6?pid=ImgDet&rs=1',
        place: AppConstants.fourSeason,
        duration: AppConstants.duration,
        rate: 4.9,
        price: 5200),
    OffersModel(
        image:
            'https://luxurytravelmom.com/wp-content/uploads/2017/04/four-seasons-orlando-review-luxury-hotel-luxury-travel-mom.jpg',
        place: AppConstants.helton,
        duration: AppConstants.duration,
        rate: 4.9,
        price: 5200),
  ];
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
        location: AppConstants.aqsaLoc,
        rate: 4.8),
    SuggestionModel(
        name: AppConstants.alsa3aHotel,
        image:
            "https://th.bing.com/th/id/OIP.h2fnjkdyQopo0_YV7wsKeAAAAA?pid=ImgDet&rs=1",
        title: AppConstants.labikOmraa,
        location: AppConstants.makaaSudia,
        rate: 5),
    SuggestionModel(
        name: AppConstants.azkaSafaHotel,
        image:
            "https://images.unsplash.com/photo-1513072064285-240f87fa81e8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1527&q=80",
        title: AppConstants.labikOmraa,
        location: AppConstants.makaaSudia,
        rate: 4.7),
  ];
  final List<WatchedLaterModel> watches = [
    WatchedLaterModel(
        image:
            'https://th.bing.com/th/id/OIP.Ub-kAO7W88FFh0126K2pZwHaE8?pid=ImgDet&rs=1',
        place: AppConstants.maldifes,
        location: AppConstants.asia,
        rate: 4.9,
        price: 5200),
    WatchedLaterModel(
        image:
            'https://th.bing.com/th/id/OIP.P9gu_ISOn3TgpCUsPgRGZQHaEH?pid=ImgDet&rs=1',
        place: AppConstants.alalamen,
        location: AppConstants.alsa7el,
        rate: 4.1,
        price: 6000),
    WatchedLaterModel(
        image:
            "https://www.otlaat.com/wp-content/uploads/2017/10/%D9%85%D8%B1%D8%B3%D9%89-%D9%85%D8%B7%D8%B1%D9%88%D8%AD.jpg",
        place: AppConstants.matro7,
        location: AppConstants.alsa7el,
        rate: 4.9,
        price: 4500),
    WatchedLaterModel(
        image:
            'https://th.bing.com/th/id/OIP.Ub-kAO7W88FFh0126K2pZwHaE8?pid=ImgDet&rs=1',
        place: AppConstants.maldifes,
        location: AppConstants.asia,
        rate: 4.9,
        price: 5200),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: ListView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: false,
              children: [
                Stack(
                  children: [
                    const Ellipse(),
                    const HomeAppBar(),
                    Positioned(
                        top: 75.h,
                        right: 15.w,
                        child: Text(
                          AppConstants.weHereToServeYou,
                          style: TextStyle(
                              fontFamily: AppConstants.fontFamily,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w700),
                        )),
                    const HomeSearch(),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.h),
                  child: const CustomTapBar(),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0.h),
                  child: DoubleText(
                    onTap: () {
                      context.push(const OffersScreen());
                    },
                    firstText: AppConstants.antherOffers,
                    secondText: AppConstants.viewAll,
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: offers.length,
                  itemBuilder: (context, index) => OtherOffersItem(
                    model: offers[index],
                  ),
                ),
                const HotOffers(),
                Padding(
                  padding: EdgeInsets.only(top: 8.h, right: 10, left: 10),
                  child: DoubleText(
                    onTap: () {
                      context.push(const WatchedLaterScreen());
                    },
                    firstText: AppConstants.watchedLater,
                    secondText: AppConstants.viewAll,
                  ),
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: watches.length,
                  scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: .9 / 1.25,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 0),
                  clipBehavior: Clip.none,
                  itemBuilder: (BuildContext context, int index) {
                    return WatchedLaterItem(model: watches[index]);
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
