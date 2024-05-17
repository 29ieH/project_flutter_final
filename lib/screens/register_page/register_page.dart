import 'package:flutter/material.dart';
import 'package:my_app/util/constans/sizes.dart';
import 'package:my_app/util/helpers/function_helpers.dart';
import 'package:my_app/util/validators/validator.dart';
import '../../common/widgets/text_suggestion.dart';
import '../navigate_page/navigate_page.dart';
import 'widgets/body.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<RegisterPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _cofirmPswController = TextEditingController();
  late String userValidate;
  late String emailValidate;
  late String passwordValidate;
  late String cofirmPassValidate;
  @override
  void initState() {
    super.initState();
    userValidate = '';
    emailValidate = '';
    passwordValidate = '';
    cofirmPassValidate = '';
  }

  void getValidUserName(value) {
    userValidate = AppValidators.validateUserName(value) ?? '';
    setState(() {});
  }

  void getValidEmail(value) {
    emailValidate = AppValidators.validateEmail(value) ?? '';
    setState(() {});
  }

  void getValidPassword(value) {
    passwordValidate = AppValidators.validatePassword(value) ?? '';
    setState(() {});
  }

  void getValidConfirm(value) {
    cofirmPassValidate =
        AppValidators.validateCofirmPassword(value, _passwordController.text) ??
            '';
    setState(() {});
  }

  bool handleSubmit() {
    userValidate =
        AppValidators.validateUserName(_usernameController.text) ?? '';
    emailValidate = AppValidators.validateEmail(_emailController.text) ?? '';
    passwordValidate =
        AppValidators.validatePassword(_passwordController.text) ?? '';
    cofirmPassValidate = AppValidators.validateCofirmPassword(
            _cofirmPswController.text, _passwordController.text) ??
        '';
    if (userValidate.isEmpty &&
        emailValidate.isEmpty &&
        passwordValidate.isEmpty &&
        cofirmPassValidate.isEmpty) {
      return true;
    }
    return false;
  }

  void onRegister(BuildContext context, Widget screen) {
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
                  child: BodyRegister(
                    isDark: isDark,
                    onRegister: () => onRegister(context, const NavigatePage()),
                    onChangeUserName: getValidUserName,
                    onChangeEmail: getValidEmail,
                    onChangePsw: getValidPassword,
                    onChangeCofirm: getValidConfirm,
                    textErrorUserName: userValidate,
                    textErrorEmail: emailValidate,
                    textErrorPassword: passwordValidate,
                    textErrorCofirmPass: cofirmPassValidate,
                    usernameController: _usernameController,
                    emailController: _emailController,
                    passwordController: _passwordController,
                    confirmPswController: _cofirmPswController,
                  ),
                ),
              ),
              const Positioned(
                bottom: AppSizes.spaceBtwItems / 10,
                right: 0,
                left: 0,
                child: TextSuggestion(
                  subTitle: "Already have an account?",
                  textOnPageSuggest: 'Login Now',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
