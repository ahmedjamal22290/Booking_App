import 'package:booking_app/core/utils/app_routs.dart';
import 'package:booking_app/core/utils/auth_servicce.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();

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

  Future<void> login() async {
    String email = emailController.text.trim();
    String passowrd = passwordController.text.trim();
    try {
      final response = await authServicce.logInWithEmailPassword(
          email: email, password: passowrd);
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

  Future<void> register() async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    String fName = firstNameController.text.trim();
    String lName = lastNameController.text.trim();

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

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    super.onClose();
  }
}
