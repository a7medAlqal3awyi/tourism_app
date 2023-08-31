import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:tourism_app/data/model/watched_later_model.dart';
import 'package:tourism_app/pressentation/widgets/othe_offer_item.dart';
import 'package:tourism_app/pressentation/widgets/watched_later_item.dart';
import 'package:tourism_app/utils/app_styles.dart';

import '../../data/model/offer_model.dart';
import '../../utils/app_constants.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
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
  ];
  final List<OffersModel> offers = [
    OffersModel(
        image:
        'https://th.bing.com/th/id/R.56dde41aee17e96425987f751a9269ce?rik=U1fjiwb7g78AyQ&pid=ImgRaw&r=0',
        place: AppConstants.fourSeason,
        duration: AppConstants.duration,
        rate: 4.9,
        price: 5200),
    OffersModel(
        image:
        'https://luxurytravelmom.com/wp-content/uploads/2017/04/four-seasons-orlando-review-luxury-hotel-luxury-travel-mom.jpg',
        place: AppConstants.fourSeason,
        duration: AppConstants.duration,
        rate: 4.9,
        price: 5200),
  ];

  bool isPressed = false;
  bool isPressed2 = false;
  PageController controller=PageController();
int curr=0;
  @override
  Widget build(BuildContext context) {
    List<Widget>screens=[
      GridView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: watches.length,
        scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: .9 / 1.25,
          crossAxisSpacing: 1,
        ),
        clipBehavior: Clip.none,
        itemBuilder: (BuildContext context, int index) {
          return WatchedLaterItem(model: watches[index]);
        },
      ),
      ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: offers.length,
        itemBuilder: (context, index) => OtherOffersItem(
          model: offers[index],
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppConstants.favorites,
          style: TextStyle(
            fontFamily: AppConstants.fontFamily,
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          SvgPicture.asset('assets/images/BlueSearch.svg'),
          SizedBox(
            width: 25.w,
          ),
        ],
      ),
      body: Column(

        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      isPressed = !isPressed;
                      if(curr!=screens.length-1) {

                        controller.jumpToPage(curr+1);
                      } else {
                        controller.jumpToPage(0);
                      }
                    });
                  },
                  icon: Icon(
                    Icons.vertical_distribute,
                    size: 20,
                    color: isPressed ? AppStyles.primaryColor : Colors.grey,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      isPressed2 = !isPressed2;
                      if(curr!=screens.length-1) {
                        controller.jumpToPage(curr+1);
                      } else {
                        controller.jumpToPage(0);
                      }
                    });
                  },
                  icon: Icon(
                    IconBroken.Category,
                    size: 20,
                    color: isPressed2 ? AppStyles.primaryColor : Colors.grey,
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: PageView(
              controller: controller,
              scrollDirection: Axis.horizontal,
              onPageChanged: (num){
                setState(() {
                  curr=num;
                });
              },
              children:screens,
            ),
          ),

        ],

      ),
    );
  }
}
