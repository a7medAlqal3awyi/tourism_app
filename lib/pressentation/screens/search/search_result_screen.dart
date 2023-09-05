import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:tourism_app/pressentation/widgets/watched_later_item.dart';
import 'package:tourism_app/utils/app_styles.dart';

import '../../../data/model/watched_later_model.dart';
import '../../../utils/app_constants.dart';
import '../../widgets/row_of_search_result.dart';
import '../../widgets/search_widget_of_scearch_screen.dart';
import '../../widgets/show_filter_result.dart';

class SearchResultScreen extends StatelessWidget {
  const SearchResultScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<WatchedLaterModel> watches = [
      WatchedLaterModel(
          image:
              "https://images.pexels.com/photos/13162041/pexels-photo-13162041.jpeg?auto=compress&cs=tinysrgb&w=400",
          place: AppConstants.makka,
          location: AppConstants.makaaSudia,
          rate: 4.9,
          price: 10000),
      WatchedLaterModel(
          image:
              "https://images.pexels.com/photos/13162041/pexels-photo-13162041.jpeg?auto=compress&cs=tinysrgb&w=400",
          place: AppConstants.makka,
          location: AppConstants.makaaSudia,
          rate: 4.9,
          price: 10000),
      WatchedLaterModel(
          image:
              "https://th.bing.com/th/id/R.02a908fa738c30651c500951dcb59761?rik=%2fk%2bycaYd1fhLhw&pid=ImgRaw&r=0",
          place: AppConstants.almadina,
          location: AppConstants.madinaSudia,
          rate: 4.9,
          price: 10000),
      WatchedLaterModel(
          image:
              "https://images.pexels.com/photos/1483053/pexels-photo-1483053.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          place: AppConstants.maldifes,
          location: AppConstants.asia,
          rate: 4.9,
          price: 10000),
      WatchedLaterModel(
          image:
              "https://images.pexels.com/photos/1483053/pexels-photo-1483053.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
          place: AppConstants.maldifes,
          location: AppConstants.asia,
          rate: 4.9,
          price: 10000),
    ];
    void showAlert(context) {
      showDialog(
          context: context,
          builder: (context) => const ShowResultFilter()
      );
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppConstants.searchResult32,
          style: TextStyle(
              fontFamily: AppConstants.fontFamily,
              fontWeight: FontWeight.w700,
              fontSize: 16.sp),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(left: 15.w),
            child: IconButton(
              onPressed: () {
                showAlert(context);
              },
              icon: Icon(
                IconBroken.Filter,
                color: AppStyles.primaryColor,
                size: 24,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SearchWidgetOfSearchScreen(),
            RoOfSearchResult(),
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
      ),
    );
  }
}
