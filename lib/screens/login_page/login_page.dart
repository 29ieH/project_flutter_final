import 'package:flutter/material.dart';
import 'package:my_app/screens/navigate_page/navigate_page.dart';
import 'package:my_app/screens/register_page/register_page.dart';
import 'package:my_app/util/constans/sizes.dart';
import 'package:my_app/util/helpers/function_helpers.dart';
import 'package:my_app/util/validators/validator.dart';
import '../../common/widgets/text_suggestion.dart';
import 'widgets/body.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  late String emailValidate;
  late String passwordValidate;
  @override
  void initState() {
    super.initState();
    emailValidate = '';
    passwordValidate = '';
  }

  void getValidEmail(value) {
    emailValidate = AppValidators.validateEmail(value) ?? '';
    setState(() {});
  }

  void getValidPassword(value) {
    passwordValidate = AppValidators.validatePassword(value) ?? '';
    setState(() {});
  }

  bool handleSubmit() {
    emailValidate = AppValidators.validateEmail(_emailController.text) ?? '';
    passwordValidate =
        AppValidators.validatePassword(_passwordController.text) ?? '';
    if (emailValidate.isEmpty && passwordValidate.isEmpty) {
      return true;
    }
    return false;
  }

  void onLogin(BuildContext context, Widget screen) {
    print(handleSubmit());
    handleSubmit()
        ? AppHelperFunctions.navigateToScreen(context, screen)
        : setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final bool isDark = AppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => {
        FocusScope.of(context).unfocus(),
      },
      child: Scaffold(
        body: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
          child: Stack(
            children: [
              Positioned.fill(
                child: SingleChildScrollView(
                  child: BodyLogin(
                      onChangeEmail: getValidEmail,
                      onChangePsw: getValidPassword,
                      onLogin: () => onLogin(context, const NavigatePage()),
                      textErrorEmail: emailValidate,
                      textErrorPassword: passwordValidate,
                      emailController: _emailController,
                      isDark: isDark,
                      passwordController: _passwordController),
                ),
              ),
              Positioned(
                bottom: AppSizes.spaceBtwItems / 10,
                right: 0,
                left: 0,
                child: TextSuggestion(
                  nextPageSuggest: () => AppHelperFunctions.navigateToScreen(
                      context, const RegisterPage()),
                  subTitle: "Don't have an account?",
                  textOnPageSuggest: 'Register Now',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
