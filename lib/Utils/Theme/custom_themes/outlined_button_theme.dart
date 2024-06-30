import 'package:dollar_pos/Utils/Constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppOutLinedButtonTheme {
  AppOutLinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
      style: ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: Colors.black,
    side: BorderSide(color: AppColors.primaryColor),
    padding: const EdgeInsets.symmetric(
      vertical: 16,
      horizontal: 20,
    ),
    textStyle: const TextStyle(
        fontWeight: FontWeight.w600, color: Colors.black, fontSize: 16),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
  ));

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
      style: ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: Colors.white,
    side: BorderSide(color: AppColors.primaryColor),
    padding: const EdgeInsets.symmetric(
      vertical: 16,
      horizontal: 20,
    ),
    textStyle: const TextStyle(
        fontWeight: FontWeight.w600, color: Colors.white, fontSize: 16),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
  ));
}
