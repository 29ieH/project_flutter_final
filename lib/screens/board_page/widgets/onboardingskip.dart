import 'package:flutter/material.dart';
import 'package:my_app/util/constans/colors.dart';
import 'package:my_app/util/helpers/function_helpers.dart';

import '../../../util/constans/sizes.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
    required this.onPressed,
  });
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    bool isDark = AppHelperFunctions.isDarkMode(context);
    return Positioned(
        top: AppSizes.appBarHeight,
        right: AppSizes.defaultSpace,
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            'Skip',
            style: onPressed != null
                ? Theme.of(context).textTheme.bodyMedium
                : Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: isDark
                        ? AppColors.disabledark
                        : AppColors.disableLight),
          ),
        ));
  }
}
