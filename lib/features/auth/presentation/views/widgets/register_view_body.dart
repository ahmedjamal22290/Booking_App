import 'dart:developer';

import 'package:booking_app/core/utils/app_routs.dart';
import 'package:booking_app/core/utils/constants.dart';
import 'package:booking_app/core/utils/styles.dart';
import 'package:booking_app/features/auth/controller/auth_controller.dart';
import 'package:booking_app/features/auth/presentation/views/widgets/email_textfield.dart';
import 'package:booking_app/features/auth/presentation/views/widgets/name_textfield.dart';
import 'package:booking_app/features/auth/presentation/views/widgets/navigator_text.dart';
import 'package:booking_app/features/auth/presentation/views/widgets/password_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterViewBody extends StatelessWidget {
  RegisterViewBody({super.key});

  final AuthController authController = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.sizeOf(context).height * 0.23,
        right: 14,
        left: 14,
      ),
      child: Form(
        key: authController.globalKey,
        child: Column(
          children: [
            Center(
              child: Text(
                'Register now',
                style: Styles.headlines1.copyWith(
                  color: const Color(0xFF1C4BC3),
                ),
              ),
            ),
            const SizedBox(
              height: 120,
            ),
            Row(
              children: [
                NameTextField(
                    text: 'First Name',
                    textEditingController: ),
                const Spacer(),
                NameTextField(text: 'Last Name',textEditingController: ,)
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            EmailTextField(
              textEditingController: authController.emailController,
            ),
            const SizedBox(
              height: 20,
            ),
            PasswordTextField(
              textEditingController: authController.passwordController,
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                if (authController.globalKey.currentState!.validate()) {
                  log('register is done by ${authController.emailController.text}:${authController.passwordController.text}');
                }
              },
              child: Container(
                width: MediaQuery.sizeOf(context).width / 1.5,
                height: 50,
                decoration: BoxDecoration(
                    color: Constants.buttonsMainColor,
                    borderRadius: BorderRadius.circular(18)),
                child: const Center(
                  child: Text(
                    'Register',
                    style: Styles.buttonText1,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 9),
            const NavigatorText(
              constantText: "You already have an accoun? ",
              navText: 'Login Now',
              navPage: AppRouts.loginView,
            )
          ],
        ),
      ),
    );
  }
}

