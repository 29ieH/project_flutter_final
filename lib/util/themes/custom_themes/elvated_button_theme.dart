import 'package:flutter/material.dart';

class AppElevatedButtonTheme {
  AppElevatedButtonTheme._();
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: const Color(0xFFB25D0F),
          disabledBackgroundColor: Colors.grey,
          disabledForegroundColor: Colors.grey,
          side: const BorderSide(color: Color(0xFFB25D0F)),
          padding: const EdgeInsets.symmetric(vertical: 18),
          textStyle: const TextStyle(
              fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.w600),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))));
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: const Color(0xFFB25D0F),
          disabledBackgroundColor: Colors.grey,
          disabledForegroundColor: Colors.grey,
          side: const BorderSide(color: Color(0xFFB25D0F)),
          padding: const EdgeInsets.symmetric(vertical: 18),
          textStyle: const TextStyle(
              fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.w600),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))));
}
