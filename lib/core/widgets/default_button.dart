import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors_manager.dart';

class DefaultButton extends StatelessWidget {
  final double height;
  final double width;
  final Color? background;
  final bool isUpperCase;
  final double radius;
  final Function() function;
  final String text;
  final TextStyle? textStyle;

  const DefaultButton({
    super.key,
    this.width = double.infinity,
    this.height = 60,
    this.background,
    this.isUpperCase = false,
    this.radius = 16,
    required this.function,
    required this.text,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius.r),
        color: background ?? Theme.of(context).primaryColor,
      ),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style:
              textStyle ??
              Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 18.sp,
                color: ColorsManager.whiteColor,
              ),
        ),
      ),
    );
  }
}
