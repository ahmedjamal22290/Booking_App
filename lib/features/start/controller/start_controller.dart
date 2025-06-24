import 'package:booking_app/core/utils/app_routs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StartController extends GetxController {
  final PageController controller = PageController();

  int page = 0;
  void animate(int value) {
    page = value;
    update();
  }

  void nextPage() {
    if (page < 2) {
      page++;
      controller.nextPage(
          duration: const Duration(milliseconds: 450),
          curve: Curves.easeInOutCirc);
      update();
    } else {
      Get.offNamed(AppRouts.authGate);
    }
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}
