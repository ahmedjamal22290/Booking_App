import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchingController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late final TextEditingController textController;
  late final AnimationController animationController;
  late final Animation<double> searchAnimation;
  late final Animation<double> mainContanierAnimation;
  late final Animation<double> textOpacityAnimation;
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
        Tween<double>(begin: 124.76, end: 0).animate(animationController);
    mainContanierAnimation =
        Tween<double>(begin: 260.66, end: 120.66).animate(animationController);
    textOpacityAnimation =
        Tween<double>(begin: 1, end: 0).animate(animationController);
  }

  void searchTaped() {
    if (!isActive) {
      animationController.forward();
      isActive = true;
      update();
    }
  }

  void cancelSearch() {
    animationController.reverse();
    isActive = false;
    update();
  }

  @override
  void onClose() {
    textController.dispose();
    animationController.dispose();
    super.onClose();
  }
}
