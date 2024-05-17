import 'package:flutter/material.dart';

import '../../../util/constans/sizes.dart';

class OnBoardingDoneNavigation extends StatelessWidget {
  const OnBoardingDoneNavigation(this.onPressed, {super.key});
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: AppSizes.NavigateHight + 6,
      right: AppSizes.defaultSpace,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(shape: CircleBorder()),
          child: Text(
            'Done',
            style: Theme.of(context).textTheme.bodyLarge,
          )),
    );
  }
}
