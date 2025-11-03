import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CircularNetworkImage extends StatelessWidget {
  final Object? imageUrl;
  final Widget? errorWidget;
  final Color? iconColor;
  final double size;
  final String placeholder;

  const CircularNetworkImage({
    super.key,
    required this.size,
    required this.imageUrl,
    required this.placeholder,
    this.errorWidget,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    if (imageUrl != null) {
      return Container(
        width: size,
        height: size,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(shape: BoxShape.circle),
        child: CachedNetworkImage(
          imageUrl: imageUrl!.toString(),
          fit: BoxFit.contain,
          placeholder: (context, url) => Image.asset(
            placeholder,
            fit: BoxFit.cover,
            color: Colors.transparent,
          ),
          errorWidget: (context, url, _) => Image.asset(
            placeholder,
            fit: BoxFit.cover,
          ),
        ),
      );
    } else {
      return errorWidget ??
          Container(
            width: size,
            height: size,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: Image.asset(
              placeholder,
              fit: BoxFit.cover,
            ),
          );
    }
  }
}
