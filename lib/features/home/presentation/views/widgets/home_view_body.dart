import 'dart:ui';

import 'package:booking_app/core/utils/styles.dart';
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
          return Stack(
            children: [
              const CustomBackgroundImage(),
              ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: controller.blurAnimation.value,
                    sigmaY: controller.blurAnimation.value,
                  ),
                  child: Container(
                    color: Colors.black.withOpacity(0),
                  ),
                ),
              ),
              Positioned(
                top: 47.02,
                left: 0,
                right: 0,
                child: Opacity(
                    opacity: controller.textOpacityAnimation.value,
                    child: const WelcomeBar()),
              ),
              Positioned(
                top: controller.searchAnimation.value,
                left: 11.52,
                right: 11.52,
                child: const CustomSearchTextField(),
              ),
              Positioned(
                top: controller.mainContanierAnimation.value,
                child: const CustomMainContainer(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      HotelItemWidget(),
                    ],
                  ),
                ),
              ),
            ],
          );
        });
  }
}

class HotelItemWidget extends StatelessWidget {
  const HotelItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (160.26 / 594.99).toDouble() * MediaQuery.sizeOf(context).height,
      width: (106.52 / 274.46).toDouble() * MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21.66),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(21.66),
        child: Stack(
          children: [
            Image.asset(
              'assets/images/home_view_images/test hottel image.jpg',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                  colors: [
                    Colors.black.withOpacity(0.53),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
            Positioned(
              top: 160.36,
              right: 6.72,
              left: 13.64,
              bottom: 8.64,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'Paradise Resort',
                    style: Styles.itemsTitleStyle,
                  ),
                  const Text(
                    'Labuan Bajo',
                    style: Styles.itemsSubtitleStyle,
                  ),
                  Row(
                    children: [
                      Text(
                        r'$480/',
                        style: Styles.itemsTitleStyle.copyWith(
                            fontSize: 12.2, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'night',
                        style: Styles.itemsTitleStyle.copyWith(
                          fontSize: 12.2,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '⭐ 4.8',
                        style: Styles.itemsTitleStyle.copyWith(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
