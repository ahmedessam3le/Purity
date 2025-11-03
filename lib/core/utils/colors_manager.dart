import 'package:flutter/material.dart';

/// ColorsManager class is used to handle all the application colors we may need.
class ColorsManager {
  static const Map<int, Color> _colorsMap = {
    50: ColorsManager.darkPrimaryColor,
    100: ColorsManager.darkPrimaryColor,
    200: ColorsManager.darkPrimaryColor,
    300: ColorsManager.darkPrimaryColor,
    400: ColorsManager.darkPrimaryColor,
    500: ColorsManager.darkPrimaryColor,
    600: ColorsManager.darkPrimaryColor,
    700: ColorsManager.darkPrimaryColor,
    800: ColorsManager.darkPrimaryColor,
    900: ColorsManager.darkPrimaryColor,
  };
  static const Color primaryColor = Color(0xFF2E7D32);
  static MaterialColor primarySwatch = MaterialColor(
    primaryColor.value,
    _colorsMap,
  );
  static const Color darkPrimaryColor = Color(0xFF2D6A6A);
  static const Color lightPrimaryColor = Color(0xFF1FBF26);
  static const Color scaffoldBackgroundColor = Color(0xFF060A1C);
  static const Color extraLightGreyColor = Color(0xFFE1E1E1);
  static const Color lightGreyColor = Color(0xFF9E9E9E);
  static const Color greyColor = Color(0xFF737477);
  static const Color darkGreyColor = Color(0xFF525252);
  static const Color deepDarkGreyColor = Color(0xFF343A40);
  static const Color blackColor = Color(0xFF000000);
  static const Color blackColor87 = Colors.black87;
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color offWhiteColor = Color(0xFFFFFFF7);
  static const Color redColor = Color(0xFFE61F34);
  static const Color greenColor = Color(0xFF4CAF50);
  static const Color yellowColor = Color(0xFFFFEB3B);
  static const Color orangeColor = Color(0xFFFF8900);
  static const Color brownColor = Color(0xFF714D43);
  static const Color frolyColor = Color(0xFFF67373);
  static const Color mandyColor = Color(0xFFE2435C);
  static const Color mediumPurpleColor = Color(0xFFA468DB);
  static const Color warmYellowColor = Color(0xFFF4B13E);
}
