import 'package:dollar_pos/Features/Authentication/Screens/Login/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Get.off(() => const LoginScreen());
    });

    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/images/dollar_pos_logo.png'))
          ],
        ),
      ),
    );
  }
}
