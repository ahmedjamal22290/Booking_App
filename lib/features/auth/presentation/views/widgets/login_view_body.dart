import 'dart:developer';

import 'package:booking_app/core/utils/app_routs.dart';
import 'package:booking_app/core/utils/constants.dart';
import 'package:booking_app/core/utils/styles.dart';
import 'package:booking_app/features/auth/controller/auth_controller.dart';
import 'package:booking_app/features/auth/presentation/views/widgets/email_textfield.dart';
import 'package:booking_app/features/auth/presentation/views/widgets/navigator_text.dart';
import 'package:booking_app/features/auth/presentation/views/widgets/password_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginViewBody extends StatefulWidget {
  LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final AuthController authController = Get.find<AuthController>();
  bool animated = false;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        animated = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenH = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Stack(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 700),
            curve: Curves.easeInOutCubic,
            height: animated ? screenH * 0.36 : 30,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  spreadRadius: 4,
                  blurRadius: 50,
                )
              ],
              color: Color(0xff121A2C),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(animated ? 200 : 18),
                bottomRight: Radius.circular(animated ? 200 : 18),
              ),
            ),
          ),
          Padding(
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
                      'Login now',
                      style: Styles.headlines1.copyWith(
                        color: const Color(0xFF1C4BC3),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 120,
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
                        log('loggin is done');
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
                          'Login',
                          style: Styles.buttonText1,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 9),
                  const NavigatorText(
                    constantText: "Don't have an account? ",
                    navText: 'Register Now',
                    navPage: AppRouts.registerView,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
