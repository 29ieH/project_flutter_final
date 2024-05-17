import 'package:flutter/material.dart';
import 'package:my_app/util/constans/colors.dart';
import 'package:my_app/util/helpers/function_helpers.dart';
import '../../../util/constans/sizes.dart';

class OnBoardingNextNavigation extends StatelessWidget {
  const OnBoardingNextNavigation({
    super.key,
    this.onpresed,
  });
  final Function()? onpresed;
  @override
  Widget build(BuildContext context) {
    bool isDark = AppHelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: AppSizes.NavigateHight + 4,
        right: AppSizes.defaultSpace,
        child: ElevatedButton(
            onPressed: onpresed,
            style: ElevatedButton.styleFrom(shape: CircleBorder()),
            child: Icon(
              Icons.arrow_forward_ios_outlined,
              color: isDark ? AppColors.light : AppColors.dark,
            )));
  }
}
