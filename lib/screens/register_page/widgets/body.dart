import 'package:flutter/material.dart';
import 'package:my_app/common/widgets/apptextfield/validator_psw_textfield.dart';
import 'package:my_app/common/widgets/apptextfield/validator_textfield.dart';
import '../../../common/widgets/app_button_container_text.dart';
import '../../../common/widgets/app_divider.dart';
import '../../../common/widgets/box_other_login.dart';
import '../../../common/widgets/rouned_image_circular.dart';
import '../../../util/constans/sizes.dart';
import '../../../util/helpers/function_helpers.dart';

class BodyRegister extends StatelessWidget {
  const BodyRegister({
    super.key,
    required this.isDark,
    required this.usernameController,
    required this.passwordController,
    required this.emailController,
    required this.confirmPswController,
    this.textErrorUserName = '',
    this.textErrorEmail = '',
    this.textErrorPassword = '',
    this.textErrorCofirmPass = '',
    this.onChangeEmail,
    this.onChangePsw,
    this.onChangeCofirm,
    this.onRegister,
    this.onChangeUserName,
  });
  final TextEditingController emailController;
  final TextEditingController usernameController;
  final TextEditingController confirmPswController;
  final TextEditingController passwordController;
  final bool isDark;
  final String textErrorUserName;
  final String textErrorEmail;
  final String textErrorPassword;
  final String textErrorCofirmPass;
  final Function(String)? onChangeUserName;
  final Function(String)? onChangeEmail;
  final Function(String)? onChangePsw;
  final Function(String)? onChangeCofirm;
  final Function()? onRegister;
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
          "Sign Up",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        Text(
          "Hello! let's join with us",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(
          height: AppSizes.spaceBtwSections,
        ),
        ValidatorTextField(
            onChange: onChangeUserName,
            controller: usernameController,
            isDark: isDark,
            textError: textErrorUserName,
            hinText: 'Enter username'),
        const SizedBox(
          height: AppSizes.spaceBtwItems,
        ),
        ValidatorTextField(
            onChange: onChangeEmail,
            controller: emailController,
            isDark: isDark,
            textError: textErrorEmail,
            hinText: 'Enter email'),
        const SizedBox(
          height: AppSizes.spaceBtwItems,
        ),
        ValidatorsPswTextField(
            onChange: onChangePsw,
            controller: passwordController,
            isDark: isDark,
            textError: textErrorPassword,
            suffIcon: const Icon(Icons.remove_red_eye_outlined),
            hinText: 'Enter password'),
        const SizedBox(
          height: AppSizes.spaceBtwItems,
        ),
        ValidatorsPswTextField(
            onChange: onChangeCofirm,
            controller: confirmPswController,
            isDark: isDark,
            suffIcon: const Icon(Icons.remove_red_eye_outlined),
            textError: textErrorCofirmPass,
            hinText: 'Cofirm password'),
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
          onClick: onRegister,
          'Sign up',
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
