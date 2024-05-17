import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../util/constans/colors.dart';
import '../../util/constans/sizes.dart';

class TextSuggestion extends StatelessWidget {
  const TextSuggestion({
    super.key,
    required this.subTitle,
    required this.textOnPageSuggest,
    this.nextPageSuggest,
  });
  final String subTitle;
  final String textOnPageSuggest;
  final Function()? nextPageSuggest;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          subTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(
          width: AppSizes.spaceBtwItems / 2,
        ),
        GestureDetector(
          onTap: nextPageSuggest,
          child: Text(
            textOnPageSuggest,
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: AppColors.primaryColor),
          ),
        ),
      ],
    );
  }
}
