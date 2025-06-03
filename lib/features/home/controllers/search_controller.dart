import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchingController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late final TextEditingController textController;
  late final AnimationController animationController;
  late final Animation<double> searchAnimation;
  late final Animation<double> mainContanierAnimation;
  late final Animation<double> textOpacityAnimation;
  late final Animation<double> blurAnimation;
  bool isActive = false;
  @override
  void onInit() {
    super.onInit();
    textController = TextEditingController();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 350),
    );
    searchAnimation = Tween<double>(begin: 124.76, end: 0).animate(
        CurvedAnimation(
            parent: animationController, curve: Curves.fastOutSlowIn));
    mainContanierAnimation = Tween<double>(begin: 260.66, end: 120.66).animate(
        CurvedAnimation(
            parent: animationController, curve: Curves.easeInOutCubic));
    blurAnimation = Tween<double>(begin: 0, end: 0.9).animate(CurvedAnimation(
        parent: animationController, curve: Curves.easeInOutCubic));
    textOpacityAnimation = Tween<double>(begin: 1, end: 0).animate(
        CurvedAnimation(
            parent: animationController, curve: Curves.easeInOutCirc));
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
