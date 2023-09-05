import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tourism_app/core/helper.dart';
import 'package:tourism_app/pressentation/widgets/row_of_text_and_X.dart';

import '../../../utils/app_constants.dart';
import '../../widgets/double_text_without_icon.dart';
import '../../widgets/search_widget_of_scearch_screen.dart';
import '../search_result_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var searchController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppConstants.search,
          style: TextStyle(
              fontFamily: AppConstants.fontFamily,
              fontWeight: FontWeight.w700,
              fontSize: 16.sp),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            GestureDetector(
              onTap: (){
                context.push( const SearchResultScreen());
              },
                child: const SearchWidgetOfSearchScreen()),
            DoubleTextWithoutIcon(
              onTap: () {
                searchController.clear();
              },
            ),
            RowOfTextAndXIcon(text: AppConstants.fourSeason),
            RowOfTextAndXIcon(text: AppConstants.matro7),
          ],
        ),
      ),
    );
  }
}
