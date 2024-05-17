import 'package:flutter/material.dart';

class AppTextFieldTheme {
  AppTextFieldTheme._();
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
      errorMaxLines: 3,
      prefixIconColor: Colors.grey,
      suffixIconColor: Colors.grey,
      labelStyle: const TextStyle()
          .copyWith(fontSize: 14, color: Colors.black.withOpacity(0.6)),
      hintStyle: const TextStyle()
          .copyWith(fontSize: 14, color: Colors.black.withOpacity(0.6)),
      errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
      border: InputBorder.none);
  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
      errorMaxLines: 2,
      prefixIconColor: Colors.grey,
      suffixIconColor: Colors.grey,
      labelStyle: const TextStyle()
          .copyWith(fontSize: 14, color: Colors.white.withOpacity(0.6)),
      hintStyle: const TextStyle()
          .copyWith(fontSize: 14, color: Colors.white.withOpacity(0.6)),
      errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
      border: InputBorder.none);
}
