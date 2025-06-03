import 'package:booking_app/features/home/presentation/views/widgets/custom_search_text_field.dart';
import 'package:booking_app/features/home/presentation/views/widgets/home_widgets/custom_background_image.dart';
import 'package:booking_app/features/home/presentation/views/widgets/home_widgets/custom_main_widget.dart';
import 'package:booking_app/features/home/presentation/views/widgets/home_widgets/welcome_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        CustomBackgroundImage(),
        Positioned(
          top: 47.02,
          left: 0,
          right: 0,
          child: WelcomeBar(),
        ),
        Positioned(
          top: 124.76,
          left: 11.52,
          right: 11.52,
          child: CustomSearchTextField(),
        ),
        Positioned(
          top: 260.66,
          child: CustomMainContainer(
            child: Column(),
          ),
        ),
      ],
    );
  }
}
