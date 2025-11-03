import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/assets_manager.dart';
import '../utils/font_manager.dart';
import '../utils/strings_manager.dart';

class NoInternetWidget extends StatelessWidget {
  const NoInternetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImageAssetsManager.noInternetImage, fit: BoxFit.cover, height: 250.h),
            Padding(
              padding:  EdgeInsets.symmetric(vertical: 10.h),
              child: Text(AppStrings.noInternetConnection.tr(), style: Theme.of(context).textTheme.headlineLarge!.copyWith(fontSize: 22.sp)),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(vertical: 10.h),
              child: Text(AppStrings.connectToInternet.tr(), maxLines: 2, style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 17.sp)),
            ),
          ],
        ),
      ),
    );
  }
}
