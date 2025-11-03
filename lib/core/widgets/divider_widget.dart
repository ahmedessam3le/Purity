import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors_manager.dart';

class DividerWidget extends StatelessWidget {
  final double width;
  final double height;
  final Color color;

  const DividerWidget({Key? key, this.width = 35, this.height = 1.5, this.color = ColorsManager.primaryColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      height: height.h,
      decoration: BoxDecoration(color: color),
    );
  }
}
