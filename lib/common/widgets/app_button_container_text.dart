import 'package:flutter/material.dart';
import 'package:my_app/common/styles/BoxShadowContainer.dart';

import '../../util/constans/colors.dart';
import '../../util/constans/sizes.dart';
import '../../util/helpers/function_helpers.dart';

class ButtonContainerText extends StatelessWidget {
  const ButtonContainerText(
    this.content, {
    super.key,
    this.onClick,
    this.heighButton = AppSizes.buttonHeigh,
    this.bgColor = AppColors.buttonPrimary,
    this.bdColor,
    this.borderRadius = AppSizes.borderRadiusLg,
  });
  final Function()? onClick;
  final double heighButton;
  final String content;
  final Color bgColor;
  final Color? bdColor;
  final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        height: AppSizes.buttonHeigh,
        width: AppHelperFunctions.screenWidth(context),
        decoration: BoxDecoration(
            border: Border.all(
                color: bdColor != null ? bdColor ?? bgColor : bgColor,
                width: 1.2),
            color: bgColor,
            borderRadius: BorderRadius.circular(borderRadius),
            boxShadow: BoxShadowContainer()),
        child: Center(
          child: Text(
            content,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ),
    );
  }
}
