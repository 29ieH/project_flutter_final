import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_app/common/styles/BoxShadowContainer.dart';

import '../../../util/constans/colors.dart';
import '../../../util/constans/sizes.dart';

class AppPasswordTextField extends StatefulWidget {
  const AppPasswordTextField(
    this.textController, {
    super.key,
    this.bgColor = AppColors.bgTextFieldPrimary,
    this.bdColor = AppColors.secondaryColor,
    this.height = AppSizes.textFiledSize,
    required this.hintText,
    this.action = TextInputAction.done,
    this.sufIcon,
    this.onChange,
  });
  final TextEditingController textController;
  final Color bgColor;
  final Color bdColor;
  final double height;
  final String hintText;
  final Icon? sufIcon;
  final TextInputAction action;
  final Function(String p1)? onChange;
  @override
  State<AppPasswordTextField> createState() => _AppPasswordTextFieldState();
}

class _AppPasswordTextFieldState extends State<AppPasswordTextField> {
  late bool isOnPassword;
  @override
  void initState() {
    super.initState();
    isOnPassword = true;
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
                  suffixIcon: () {
                    if (widget.sufIcon != null) {
                      return GestureDetector(
                          onTap: () {
                            isOnPassword = false;
                            setState(() {});
                            Timer(const Duration(milliseconds: 500), () {
                              isOnPassword = true;
                              setState(() {});
                            });
                          },
                          child: widget.sufIcon);
                    }
                  }()),
              textInputAction: widget.action,
            ),
          ),
        ));
  }
}
