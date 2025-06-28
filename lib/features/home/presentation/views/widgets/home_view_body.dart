import 'dart:ui';

import 'package:booking_app/features/home/controllers/search_controller.dart';
import 'package:booking_app/features/home/presentation/views/widgets/custom_search_text_field.dart';
import 'package:booking_app/features/home/presentation/views/widgets/home_widgets/custom_background_image.dart';
import 'package:booking_app/features/home/presentation/views/widgets/home_widgets/custom_main_widget.dart';
import 'package:booking_app/features/home/presentation/views/widgets/home_widgets/welcome_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SearchingController>();
    return AnimatedBuilder(
      animation: controller.animationController,
      builder: (context, _) {
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            height: MediaQuery.of(context).size.height + 30,
            child: Stack(
              children: [
                const CustomBackgroundImage(),
                ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: controller.blurAnimation.value,
                      sigmaY: controller.blurAnimation.value,
                    ),
                    child: Container(color: Colors.black.withAlpha(0)),
                  ),
                ),
                Positioned(
                  top: 47.02,
                  left: 0,
                  right: 0,
                  child: Opacity(
                    opacity: controller.textOpacityAnimation.value,
                    child: const WelcomeBar(),
                  ),
                ),
                Positioned(
                  top: controller.searchAnimation.value,
                  left: 11.52,
                  right: 11.52,
                  child: const CustomSearchTextField(),
                ),
                Positioned(
                  top: controller.mainContanierAnimation.value,
                  child: const CustomMainContainer(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
