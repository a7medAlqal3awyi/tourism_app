import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app/utils/app_constants.dart';

import '../../../data/model/offer_model.dart';
import '../../widgets/othe_offer_item.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<OffersModel> offers = [
      OffersModel(
          image:
              'https://th.bing.com/th/id/OIP.Ub-kAO7W88FFh0126K2pZwHaE8?pid=ImgDet&rs=1',
          place: AppConstants.sharmElshekh,
          rate: 4.9,
          price: 7000,
          duration: AppConstants.duration),
      OffersModel(
          image:
              'https://luxurytravelmom.com/wp-content/uploads/2017/04/four-seasons-orlando-review-luxury-hotel-luxury-travel-mom.jpg',
          place: AppConstants.fourSeason,
          duration: AppConstants.duration,
          rate: 4.9,
          price: 5200),
      OffersModel(
          image:
              'https://th.bing.com/th/id/OIP.3LqOju4oBzQs8NB4ztRP1QHaFj?pid=ImgDet&rs=1',
          place: AppConstants.matro7,
          duration: AppConstants.duration,
          rate: 4.9,
          price: 4500),
      OffersModel(
          image:
              'https://luxurytravelmom.com/wp-content/uploads/2017/04/four-seasons-orlando-review-luxury-hotel-luxury-travel-mom.jpg',
          place: AppConstants.fourSeason,
          duration: AppConstants.duration,
          rate: 4.9,
          price: 5200),
      OffersModel(
          image:
          'https://th.bing.com/th/id/OIP.Ub-kAO7W88FFh0126K2pZwHaE8?pid=ImgDet&rs=1',
          place: AppConstants.sharmElshekh,
          rate: 4.9,
          price: 7000,
          duration: AppConstants.duration),
      OffersModel(
          image:
          'https://luxurytravelmom.com/wp-content/uploads/2017/04/four-seasons-orlando-review-luxury-hotel-luxury-travel-mom.jpg',
          place: AppConstants.fourSeason,
          duration: AppConstants.duration,
          rate: 4.9,
          price: 5200),
      OffersModel(
          image:
          'https://th.bing.com/th/id/OIP.3LqOju4oBzQs8NB4ztRP1QHaFj?pid=ImgDet&rs=1',
          place: AppConstants.matro7,
          duration: AppConstants.duration,
          rate: 4.9,
          price: 4500),
    ];

    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,

        centerTitle: true,
        title: Text(
          AppConstants.theOffers,
          style: TextStyle(
              fontFamily: AppConstants.fontFamily,
              fontWeight: FontWeight.w700,
              fontSize: 16.sp),
        ),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
          itemCount: offers.length,
          itemBuilder: (context, index) => OtherOffersItem(
                model: offers[index],
              )),
    );
  }
}
