import 'package:flutter/material.dart';

import '../../../util/constans/sizes.dart';
import '../../../util/helpers/function_helpers.dart';

class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem({
    super.key,
    required this.imagePath,
    required this.heading,
    required this.body,
  });
  final String imagePath;
  final String heading;
  final String body;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.defaultSpace),
      child: Column(
        children: [
          Image(
              height: AppHelperFunctions.screenHeigh(context) * 0.55,
              width: AppHelperFunctions.screenWidth(context) * 0.6,
              image: AssetImage(imagePath)),
          Text(
            heading,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: AppSizes.spaceBtwItems,
          ),
          Text(
            body,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
