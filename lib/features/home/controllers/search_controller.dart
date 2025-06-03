import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchingController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late final TextEditingController textController;
  late final AnimationController animationController;

  @override
  void onInit() {
    super.onInit();
    textController = TextEditingController();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
  }

  @override
  void onClose() {
    textController.dispose();
    animationController.dispose();
    super.onClose();
  }
}
