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
        CustomMainContainer(
          child: Column(),
        ),
      ],
    );
  }
}
