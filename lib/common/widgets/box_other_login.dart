import 'package:flutter/widgets.dart';

import '../../util/constans/sizes.dart';
import 'rouned_image_circular.dart';

class BoxOtherLogin extends StatelessWidget {
  const BoxOtherLogin({
    super.key,
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        const RounedImage(
          'assets/images/logos/logo_facebook.png',
          borderRadius: 100.0,
          height: 40,
          width: 40,
        ),
        const SizedBox(
          width: AppSizes.defaultSpace,
        ),
        const RounedImage(
          'assets/images/logos/logo_gmail.png',
          borderRadius: 100.0,
          height: 40,
          width: 40,
        ),
        const SizedBox(
          width: AppSizes.defaultSpace,
        ),
        RounedImage(
          (isDark
              ? 'assets/images/logos/logo_apple_dark.png'
              : 'assets/images/logos/logo_apple.png'),
          borderRadius: 100.0,
          height: 40,
          width: 40,
        ),
        const Spacer(),
      ],
    );
  }
}
