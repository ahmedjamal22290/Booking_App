import 'package:booking_app/core/utils/app_routs.dart';
import 'package:booking_app/core/utils/auth_servicce.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  final isLoggedIn = false.obs;
  final AuthServicce authServicce = AuthServicce();

  @override
  void onInit() {
    super.onInit();
    checkLoginStatus();
  }

  void checkLoginStatus() {
    final email = authServicce.getCurrentUserEmail();
    isLoggedIn.value = email != null;
  }

  Future<void> login({required String email, required String password}) async {
    try {
      final response = await authServicce.logInWithEmailPassword(
          email: email, password: password);
      if (response.session != null) {
        isLoggedIn.value = true;
        Get.offAllNamed(AppRouts.homeView);
      } else {
        Get.snackbar(
          'Login Faild',
          'Invalid email or password',
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    } catch (e) {
      Get.snackbar('Error', 'Login failed: $e',
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  Future<void> register(
      {required String email,
      required String password,
      required String fName,
      required String lName}) async {
    try {
      final response = await authServicce.registerWithEmailPassword(
        email: email,
        password: password,
        fName: fName,
        lName: lName,
      );

      if (response.session != null) {
        isLoggedIn.value = true;
        Get.offAllNamed(AppRouts.homeView);
      } else {
        Get.snackbar('Registration Failed', 'Please try again later',
            snackPosition: SnackPosition.BOTTOM);
      }
    } catch (e) {
      Get.snackbar('Error', 'Registration failed: $e',
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  void logout() async {
    await authServicce.signOut();
    isLoggedIn.value = false;
    Get.offAllNamed(AppRouts.loginView);
  }
}
