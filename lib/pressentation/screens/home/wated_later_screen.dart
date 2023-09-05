import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app/pressentation/widgets/watched_later_item.dart';

import '../../../data/model/watched_later_model.dart';
import '../../../utils/app_constants.dart';

class WatchedLaterScreen extends StatelessWidget {
  const WatchedLaterScreen({super.key});

  @override
  Widget build(BuildContext context) {
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

    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,

        centerTitle: true,
        title: Text(
          AppConstants.watchedLater,
          style: TextStyle(
              fontFamily: AppConstants.fontFamily,
              fontWeight: FontWeight.w700,
              fontSize: 16.sp),
        ),
      ),
      body: GridView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: watches.length,
        scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: .8/ 1.1,
            mainAxisSpacing: 0),
        clipBehavior: Clip.none,
        itemBuilder: (BuildContext context, int index) {
          return WatchedLaterItem(model: watches[index]);
        },
      ),
    );
  }
}
