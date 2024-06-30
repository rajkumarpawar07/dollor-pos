import 'package:dollar_pos/Features/Authentication/Screens/Login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'Features/Authentication/Screens/SplashScreen/splash_screen.dart';
import 'Utils/Theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: AppTheme.lightTheme, // light theme
        darkTheme: AppTheme.darkTheme, // dark theme
        themeMode: ThemeMode.system, // theme mode is set to system mode
        home: const SplashScreen());
  }
}
