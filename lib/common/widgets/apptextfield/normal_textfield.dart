import 'package:flutter/material.dart';

import '../../../util/constans/colors.dart';
import '../../../util/constans/sizes.dart';
import '../../styles/BoxShadowContainer.dart';

class AppTextField extends StatelessWidget {
  const AppTextField(
    this.textController, {
    super.key,
    this.bgColor = AppColors.bgTextFieldPrimary,
    this.bdColor = AppColors.secondaryColor,
    this.height = AppSizes.textFiledSize,
    this.preIcon,
    required this.hintText,
    this.action = TextInputAction.next,
    this.onChange,
  });
  final TextEditingController textController;
  final Color bgColor;
  final Color bdColor;
  final double height;
  final Icon? preIcon;
  final String hintText;
  final TextInputAction action;
  final Function(String p1)? onChange;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: AppSizes.textFiledSize,
        decoration: BoxDecoration(
            border: Border.all(color: bdColor, width: 1.4),
            borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
            color: bgColor,
            boxShadow: BoxShadowContainer()),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.defaultSpace - 10),
          child: Center(
            child: TextField(
              onChanged: onChange,
              controller: textController,
              decoration: InputDecoration(
                hintText: hintText,
                prefixIcon: preIcon,
              ),
              textInputAction: action,
            ),
          ),
        ));
  }
}
