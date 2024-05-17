import 'package:flutter/material.dart';
import 'package:my_app/common/widgets/apptextfield/validator_psw_textfield.dart';
import 'package:my_app/common/widgets/apptextfield/validator_textfield.dart';

import '../../../common/widgets/app_button_container_text.dart';
import '../../../common/widgets/app_divider.dart';
import '../../../common/widgets/box_other_login.dart';
import '../../../common/widgets/rouned_image_circular.dart';
import '../../../util/constans/sizes.dart';
import '../../../util/helpers/function_helpers.dart';

class BodyLogin extends StatelessWidget {
  const BodyLogin({
    super.key,
    required this.emailController,
    required this.isDark,
    required this.passwordController,
    this.textErrorEmail = '',
    this.textErrorPassword = '',
    this.onChangeEmail,
    this.onChangePsw,
    this.onLogin,
  });

  final TextEditingController emailController;
  final bool isDark;
  final TextEditingController passwordController;
  final String textErrorEmail;
  final String textErrorPassword;
  final Function(String)? onChangeEmail;
  final Function(String)? onChangePsw;
  final Function()? onLogin;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: AppSizes.appBarHeight,
        ),
        const RounedImage(
          'assets/images/logo_app.png',
          height: 80,
          width: 80,
          borderRadius: 100.0,
        ),
        const SizedBox(
          height: AppSizes.spaceBtwSections,
        ),
        Text(
          "Welcome",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        Text(
          "Sign in to continue",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(
          height: AppSizes.spaceBtwSections,
        ),
        ValidatorTextField(
          controller: emailController,
          hinText: 'Enter email',
          isDark: isDark,
          onChange: onChangeEmail,
          textError: textErrorEmail,
        ),
        const SizedBox(
          height: AppSizes.spaceBtwItems,
        ),
        ValidatorsPswTextField(
          controller: passwordController,
          hinText: 'Enter password',
          isDark: isDark,
          suffIcon: const Icon(Icons.remove_red_eye_outlined),
          onChange: onChangePsw,
          textError: textErrorPassword,
        ),
        const SizedBox(
          height: AppSizes.spaceBtwItems / 2,
        ),
        SizedBox(
          width: AppHelperFunctions.screenWidth(context),
          child: Text(
            'Forgot Password?',
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.right,
          ),
        ),
        const SizedBox(
          height: AppSizes.defaultSpace,
        ),
        ButtonContainerText(
          onClick: onLogin,
          'Login',
        ),
        const SizedBox(
          height: AppSizes.spaceBtwSections,
        ),
        const AppDividerStyle('Or Login with'),
        const SizedBox(
          height: AppSizes.defaultSpace - 10,
        ),
        BoxOtherLogin(isDark: isDark),
      ],
    );
  }
}
