import 'package:flutter/material.dart';
import 'package:my_app/common/widgets/apptextfield/normal_textfield.dart';
import '../../../util/constans/colors.dart';
import '../../../util/constans/sizes.dart';

class ValidatorTextField extends StatelessWidget {
  const ValidatorTextField({
    super.key,
    required this.onChange,
    required this.isDark,
    this.textError = '',
    required this.hinText,
    required this.controller,
  });
  final Function(String)? onChange;
  final TextEditingController controller;
  final bool isDark;
  final String textError;
  final String hinText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTextField(onChange: onChange, controller, hintText: hinText),
          const SizedBox(
            height: AppSizes.spaceBtwItems / 2,
          ),
          textError.isNotEmpty
              ? Text(
                  textError,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: AppColors.textError),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
