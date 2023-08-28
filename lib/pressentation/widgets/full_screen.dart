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
            height: MediaQuery.of(context).size.height,
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
              child: Center(child: Image.asset('assets/images/w360.png')))

        ],
      ),
    );
