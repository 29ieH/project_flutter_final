import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_app/common/styles/BoxShadowContainer.dart';

import '../../../util/constans/colors.dart';
import '../../../util/constans/sizes.dart';

class AppContainerTextField extends StatefulWidget {
  const AppContainerTextField(
    this.textController, {
    super.key,
    this.bgColor = AppColors.bgTextFieldPrimary,
    this.bdColor = AppColors.secondaryColor,
    this.height = AppSizes.textFiledSize,
    this.preIcon,
    required this.hintText,
    this.isPassword = false,
    this.action = TextInputAction.next,
    this.sufIcon,
    this.onChange,
  });
  final TextEditingController textController;
  final Color bgColor;
  final Color bdColor;
  final double height;
  final Icon? preIcon;
  final String hintText;
  final bool isPassword;
  final Icon? sufIcon;
  final TextInputAction action;
  final Function(String)? onChange;

  @override
  State<AppContainerTextField> createState() => _AppContainerTextFieldState();
}

class _AppContainerTextFieldState extends State<AppContainerTextField> {
  late bool isOnPassword;
  @override
  void initState() {
    isOnPassword = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: AppSizes.textFiledSize,
        decoration: BoxDecoration(
            border: Border.all(color: widget.bdColor, width: 1.4),
            borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
            color: widget.bgColor,
            boxShadow: BoxShadowContainer()),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.defaultSpace - 10),
          child: Center(
            child: TextField(
              onChanged: widget.onChange,
              controller: widget.textController,
              obscureText: isOnPassword,
              decoration: InputDecoration(
                  hintText: widget.hintText,
                  prefixIcon: widget.preIcon,
                  suffixIcon: widget.sufIcon != null
                      ? GestureDetector(
                          onTap: () {
                            isOnPassword = false;
                            setState(() {});
                            Timer(Duration(milliseconds: 500), () {
                              isOnPassword = true;
                              setState(() {});
                            });
                          },
                          child: widget.sufIcon)
                      : null),
              textInputAction: widget.action,
            ),
          ),
        ));
  }
}
