import 'package:dollar_pos/Utils/Constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../Core/Screens/Home/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min, // <--- add this
            children: [
              const Image(
                  image: AssetImage('assets/images/dollar_pos_logo.png')),
              const SizedBox(
                height: 15,
              ),
              DropdownButtonFormField(
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      prefixIcon: Icon(Iconsax.sort),
                      label: Text('Select the portal')),
                  items: [
                    "Portal 1",
                    "Portal 2",
                    "Portal 3",
                    "Portal 4",
                  ]
                      .map((option) =>
                          DropdownMenuItem(value: option, child: Text(option)))
                      .toList(),
                  onChanged: (value) {}),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.direct_right),
                    labelText: 'Username'),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Iconsax.password_check),
                    suffixIcon: IconButton(
                      icon: Icon(true ? Iconsax.eye_slash : Iconsax.eye),
                      onPressed: () {},
                    ),
                    labelText: 'Password'),
              ),
              const SizedBox(
                height: 28,
              ),
              SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                      onPressed: () {
                        Get.to(() => const HomeScreen());
                      },
                      child: const Text(
                        'Submit',
                        style: TextStyle(fontSize: 16),
                      )))
            ],
          ),
        ),
      ),
    ));
  }
}
