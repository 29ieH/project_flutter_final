import 'package:flutter/material.dart';

class AppColors {
  AppColors._();
  // App Basic Colors
  static const Color primaryColor = Color(0xFFC67C4E);
  static const Color secondaryColor = Color(0xFFEDD6C8);
  static const Color accent = Color(0xFF313131);
  // Text Colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C7570);
  static const Color textWhite = Colors.white;
  static const Color textDark = Color(0xFF272727);
  static const Color light = Colors.white;
  static const Color dark = Color(0xFF272727);
  static Color disableLight = textDark.withOpacity(0.6);
  static Color disabledark = textWhite.withOpacity(0.6);
  static Color textError = Colors.red;
  static Color warningError = Colors.yellow;
  // Background Colors
  static const Color bgLight = Color(0xFFF6F6F6);
  static const Color bgdark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFF313131);
  // Background Container color
  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = AppColors.textWhite.withOpacity(0.1);
  // Button Colors
  static const Color buttonPrimary = Color(0xFFC67C4E);
  static const Color buttonSecondary = Color(0xFFEDD6C8);
  // Border Colors
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFEDD6C8);
  // TextField Background Colors
  static const Color bgTextFieldPrimary = Color(0xFFEDD6C8);
}
