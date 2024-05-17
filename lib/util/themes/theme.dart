import 'package:flutter/material.dart';
import 'package:my_app/util/themes/custom_themes/appbar_theme.dart';
import 'package:my_app/util/themes/custom_themes/elvated_button_theme.dart';
import 'package:my_app/util/themes/custom_themes/text_filed_theme.dart';
import 'package:my_app/util/themes/custom_themes/text_theme.dart';

class AppTheme {
  AppTheme._();
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Sora',
      brightness: Brightness.light,
      primaryColor: const Color(0xFFB25D0F),
      scaffoldBackgroundColor: Colors.white,
      textTheme: AppTextTheme.lightTextTheme,
      inputDecorationTheme: AppTextFieldTheme.lightInputDecorationTheme,
      appBarTheme: AppAppBarTheme.lightAppBarTheme,
      elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme);
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Sora',
      brightness: Brightness.dark,
      primaryColor: const Color(0xFFB25D0F),
      scaffoldBackgroundColor: Colors.black,
      textTheme: AppTextTheme.darkTextTheme,
      inputDecorationTheme: AppTextFieldTheme.darkInputDecorationTheme,
      appBarTheme: AppAppBarTheme.darkAppBarTheme,
      elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme);
}
