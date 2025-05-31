import 'package:booking_app/core/utils/constants.dart';
import 'package:booking_app/features/start/controller/start_controller.dart';
import 'package:booking_app/features/start/presentation/views/widgets/first_view.dart';
import 'package:booking_app/features/start/presentation/views/widgets/second_view.dart';
import 'package:booking_app/features/start/presentation/views/widgets/start_animated_button.dart';
import 'package:booking_app/features/start/presentation/views/widgets/thired_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class StartViewBody extends StatefulWidget {
  const StartViewBody({super.key});

  @override
  State<StartViewBody> createState() => _StartViewBodyState();
}

class _StartViewBodyState extends State<StartViewBody> {
  var startController = Get.put(StartController());
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 0.7958453 * MediaQuery.of(context).size.height,
          child: PageView(
            physics: const BouncingScrollPhysics(),
            controller: startController.controller,
            onPageChanged: startController.animate,
            children: const [
              FirstView(),
              SecondView(),
              ThiredView(),
            ],
          ),
        ),
        const SizedBox(height: 15),
        SmoothPageIndicator(
          controller: startController.controller,
          count: 3,
          effect: const ExpandingDotsEffect(
            dotWidth: 6.72,
            expansionFactor: 5.56994,
            dotHeight: 4.8,
            activeDotColor: Constants.buttonsMainColor,
          ),
        ),
        const Spacer(),
        const StartAnimatedButton(),
        const SizedBox(height: 24),
      ],
    );
  }
}
