import 'package:flutter/material.dart';

import '../../Constants/app_colors.dart';

class AppChipTheme {
  AppChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor:  AppColors.primaryColor,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    checkmarkColor: Colors.white,
  );

  static ChipThemeData darkChipTheme =  ChipThemeData(
    disabledColor: Colors.grey,
    labelStyle: TextStyle(color: Colors.white),
    selectedColor:  AppColors.primaryColor,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    checkmarkColor: Colors.white,
  );
}
