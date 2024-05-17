import 'package:flutter/material.dart';

import '../../util/constans/sizes.dart';

class RounedImage extends StatelessWidget {
  const RounedImage(
    this.pathImage, {
    super.key,
    this.width = 60,
    this.height = 60,
    this.borderRadius = AppSizes.borderRadiusLg,
  });
  final String pathImage;
  final double width;
  final double height;
  final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: Image(
          height: height,
          width: width,
          image: AssetImage(pathImage),
          fit: BoxFit.cover,
        ));
  }
}
