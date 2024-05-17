import 'package:flutter/material.dart';

import '../../util/constans/colors.dart';
import '../../util/constans/sizes.dart';

class AppDividerStyle extends StatelessWidget {
  const AppDividerStyle(
    this.content, {
    super.key,
    this.widthThickness = 1.0,
  });
  final String content;
  final double widthThickness;
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Divider(
            height: 2.0,
            color: AppColors.bgTextFieldPrimary,
            thickness: 1.0,
          ),
        ),
        Padding(
            padding:
                EdgeInsets.symmetric(horizontal: AppSizes.spaceBtwItems / 2),
            child: Text('Or Login with')),
        Expanded(
          child: Divider(
            height: 2.0,
            color: AppColors.bgTextFieldPrimary,
            thickness: 1.0,
          ),
        ),
      ],
    );
  }
}
