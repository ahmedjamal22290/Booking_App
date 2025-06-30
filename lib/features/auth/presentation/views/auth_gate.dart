import 'package:booking_app/core/utils/app_routs.dart';
import 'package:booking_app/features/auth/controller/auth_controller.dart';
import 'package:booking_app/features/start/presentation/views/start_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthGate extends StatelessWidget {
  AuthGate({super.key});
  final AuthController authController = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (authController.isLoggedIn.value) {
        if (authController.slecetedCity.value == '') {
          if (!authController.didShowCitySheet) {
            authController.didShowCitySheet = true;
            WidgetsBinding.instance.addPostFrameCallback((_) {
              authController.showCitySelectionBottomSheet(context);
            });
          }
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        } else {
          if (!authController.didNavigateToHome) {
            authController.didNavigateToHome = true;
            WidgetsBinding.instance.addPostFrameCallback((_) {
              Get.offAllNamed(AppRouts.homeView);
            });
          }
        }
      }
      return const StartView();
    });
  }
}
