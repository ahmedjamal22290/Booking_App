import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StartController extends GetxController {
  final PageController controller = PageController();

  int page = 0;
  void animate(int value) {
    log('animate function');
    page = value;
    update();
  }

  void nextPage() {
    log('out the if ');
    if (page < 2) {
      log('inside the if');
      page++;
      controller.nextPage(
          duration: const Duration(milliseconds: 450),
          curve: Curves.easeInOutCirc);
      update();
      log('after update');
    }
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}
