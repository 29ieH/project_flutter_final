import 'package:flutter/material.dart';
import 'package:my_app/common/widgets/apptextfield/psw_textfield.dart.dart';
import '../../../util/constans/colors.dart';
import '../../../util/constans/sizes.dart';

class ValidatorsPswTextField extends StatelessWidget {
  const ValidatorsPswTextField({
    super.key,
    required this.onChange,
    required this.isDark,
    this.textError = '',
    required this.hinText,
    this.suffIcon,
    required this.controller,
  });
  final Function(String)? onChange;
  final TextEditingController controller;
  final bool isDark;
  final String textError;
  final String hinText;
  final Icon? suffIcon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppPasswordTextField(
            controller,
            hintText: hinText,
            sufIcon: suffIcon,
            onChange: onChange,
          ),
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
