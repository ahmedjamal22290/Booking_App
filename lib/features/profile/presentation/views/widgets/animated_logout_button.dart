import 'package:booking_app/core/utils/app_routs.dart';
import 'package:booking_app/features/auth/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class AnimatedLogoutButton extends StatelessWidget {
  AnimatedLogoutButton({super.key});
  final AuthController authController = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        authController.logout();
        Get.offAllNamed(AppRouts.authGate);
      },
      child: SizedBox(
        height: 80,
        child: Lottie.asset(
          'assets/lottie/logout_animation.json',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
