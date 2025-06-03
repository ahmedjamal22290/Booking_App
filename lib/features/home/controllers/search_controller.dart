import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchingController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late final TextEditingController textController;
  late final AnimationController animationController;
  late final Animation<double> searchAnimation;
  late final Animation<double> mainContanierAnimation;
  bool isActive = false;
  @override
  void onInit() {
    super.onInit();
    textController = TextEditingController();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
    searchAnimation =
        Tween<double>(begin: 124.76, end: 40).animate(animationController);
    mainContanierAnimation =
        Tween<double>(begin: 124.76, end: 40).animate(animationController);
  }

  void searchTaped() {
    if (!isActive) {
      animationController.forward();
      isActive = true;
    }
  }

  void cancelSearch() {
    animationController.reverse();
    isActive = false;
  }

  @override
  void onClose() {
    textController.dispose();
    animationController.dispose();
    super.onClose();
  }
}
