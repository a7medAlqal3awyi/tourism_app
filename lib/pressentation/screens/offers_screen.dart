import 'package:flutter/material.dart';
import 'package:tourism_app/utils/app_constants.dart';
class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(
          AppConstants.antherOffers
        ),
      ),
    );
  }
}
