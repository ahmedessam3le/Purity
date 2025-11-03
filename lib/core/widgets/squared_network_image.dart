import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors_manager.dart';

class SquaredNetworkImage extends StatelessWidget {
  final Object? imageUrl;
  final Widget? errorWidget;
  final Color? iconColor;
  final double size;
  final String placeholder;
  final bool? showBorder;

  const SquaredNetworkImage({super.key, required this.size, required this.imageUrl, required this.placeholder, this.errorWidget, this.iconColor, this.showBorder = true});

  @override
  Widget build(BuildContext context) {
    if (imageUrl != null) {
      return Container(
        width: size,
        height: size,
        padding:  EdgeInsets.all(4.w),
        clipBehavior: showBorder! ? Clip.antiAlias : Clip.none,
        decoration: showBorder!
            ? BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(color: Theme.of(context).primaryColor, width: 2.w),
                borderRadius: BorderRadius.circular(10.r),
              )
            : null,
        child: CachedNetworkImage(
          imageUrl: imageUrl!.toString(),
          fit: BoxFit.cover,
          placeholder: (context, url) => Image.asset(placeholder, fit: BoxFit.cover, color: Theme.of(context).indicatorColor),
          errorWidget: (context, url, _) => Image.asset(placeholder, fit: BoxFit.cover, color: Theme.of(context).indicatorColor),
        ),
      );
    } else {
      return errorWidget ??
          Container(
            width: size,
            height: size,
            padding:  EdgeInsets.all(4.w),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(color: Theme.of(context).primaryColor, width: 2.w),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Image.asset(placeholder, fit: BoxFit.cover, color: iconColor ?? ColorsManager.lightGreyColor),
          );
    }
  }
}
