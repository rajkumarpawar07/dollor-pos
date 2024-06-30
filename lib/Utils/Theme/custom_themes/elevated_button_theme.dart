import 'package:dollar_pos/Utils/Constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppElevatedButtonTheme {
  AppElevatedButtonTheme._();

  // light theme for elevated button
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: Colors.white,
    backgroundColor: AppColors.primaryColor,
    disabledBackgroundColor: Colors.grey,
    disabledForegroundColor: Colors.grey,
    // side: BorderSide(color: Colors.white),
    padding: const EdgeInsets.symmetric(
      vertical: 18,
    ),
    textStyle: const TextStyle(
        fontWeight: FontWeight.w600, color: Colors.white, fontSize: 16),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ));

  // Dark Theme for elevated button
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    elevation: 0,
    foregroundColor: Colors.white,
    backgroundColor: AppColors.secondaryColor,
    disabledBackgroundColor: Colors.grey,
    disabledForegroundColor: Colors.grey,
    // side: BorderSide(color: AppColors.secondaryColor),
    padding: const EdgeInsets.symmetric(
      vertical: 18,
    ),
    textStyle: const TextStyle(
        fontWeight: FontWeight.w600, color: Colors.white, fontSize: 16),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  ));
}
