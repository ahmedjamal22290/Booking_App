import 'package:booking_app/core/utils/constants.dart';
import 'package:booking_app/core/utils/styles.dart';
import 'package:booking_app/features/start/presention/views/widgets/first_view.dart';
import 'package:booking_app/features/start/presention/views/widgets/second_view.dart';
import 'package:booking_app/features/start/presention/views/widgets/thired_view.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class StartViewBody extends StatefulWidget {
  const StartViewBody({super.key});

  @override
  State<StartViewBody> createState() => _StartViewBodyState();
}

class _StartViewBodyState extends State<StartViewBody> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 0.7958453 * MediaQuery.of(context).size.height,
          child: PageView(
            physics: const BouncingScrollPhysics(),
            controller: _controller,
            children: const [
              FirstView(),
              SecondView(),
              ThiredView(),
            ],
          ),
        ),
        const SizedBox(height: 15),
        SmoothPageIndicator(
          controller: _controller,
          count: 3,
          effect: const ExpandingDotsEffect(
            dotWidth: 6.72,
            expansionFactor: 5.56994,
            dotHeight: 4.8,
            activeDotColor: Constants.buttonsMainColor,
          ),
        ),
        const Spacer(),
        Container(
          width: 0.91608 * MediaQuery.of(context).size.width,
          height: 0.05484 * MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.8),
            color: Constants.buttonsMainColor,
          ),
          child: const Center(
            child: Text(
              "Let's Go",
              style: Styles.buttonText1,
            ),
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
