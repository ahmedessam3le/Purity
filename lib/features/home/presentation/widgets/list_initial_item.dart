import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/assets_manager.dart';
import '../../../../core/utils/colors_manager.dart';
import '../../../../core/utils/strings_manager.dart';
import '../../../../core/widgets/default_button.dart';
import '../../../../core/widgets/spacing.dart';

class ListInitialItem extends StatelessWidget {
  const ListInitialItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330.w,
      decoration: BoxDecoration(
        color: ColorsManager.warmYellowColor,
        borderRadius: BorderRadius.circular(10.r),
        boxShadow: [
          BoxShadow(
            color: ColorsManager.offWhiteColor.withValues(alpha: .9),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.r),
      padding: EdgeInsets.all(16.r),
      child: Column(
        children: [
          Spacing.vSize(16.h),
          Image.asset(
            ImageAssetsManager.appLogo,
            width: 120.w,
            fit: BoxFit.cover,
          ),
          Spacing.vSize(12.h),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: AppStrings.scan,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: ' ${AppStrings.aBarcodeOr}',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: AppStrings.search,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: ' ${AppStrings.forAProduct}',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Spacing.vSize(48.h),
          DefaultButton(
            function: () {},
            text: AppStrings.searchBtnLabel,
            width: 250.w,
            radius: 24.r,
          ),
        ],
      ),
    );
  }
}
