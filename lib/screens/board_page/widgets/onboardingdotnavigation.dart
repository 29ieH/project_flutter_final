import 'package:flutter/material.dart';
import 'package:my_app/util/helpers/function_helpers.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../util/constans/colors.dart';
import '../../../util/constans/sizes.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
    required this.pageController,
  });

  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: AppSizes.NavigateHight + 20,
        left: AppSizes.defaultSpace,
        child: SmoothPageIndicator(
            effect: ExpandingDotsEffect(
                activeDotColor: dark ? AppColors.light : AppColors.dark,
                dotHeight: 6),
            controller: pageController,
            count: 3));
  }
}
