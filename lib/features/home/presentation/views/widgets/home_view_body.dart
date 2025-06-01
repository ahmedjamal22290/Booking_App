import 'package:booking_app/core/utils/styles.dart';
import 'package:booking_app/features/home/presentation/views/widgets/home_widgets/custom_background_image.dart';
import 'package:booking_app/features/home/presentation/views/widgets/home_widgets/custom_main_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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

class WelcomeBar extends StatelessWidget {
  const WelcomeBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 11.52),
      child: Row(
        children: [
          CustomWelcomeTextWidget(),
          Spacer(),
          CustomNotificationIcon()
        ],
      ),
    );
  }
}

class CustomNotificationIcon extends StatelessWidget {
  const CustomNotificationIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 35.75,
          width: 35.75,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.5),
            borderRadius: BorderRadius.circular(9),
          ),
          child: Image.asset(
            'assets/images/home_view_images/notification_icon.png',
            alignment: Alignment.center,
            scale: 3,
          ),
        ),
        Positioned(
          top: 7.76,
          right: 5.76,
          child: Transform.scale(
            scale: 1.3,
            child: SvgPicture.asset(
                'assets/icons/home_view_icons/notification_red_dot.svg'),
          ),
        )
      ],
    );
  }
}

class CustomWelcomeTextWidget extends StatelessWidget {
  const CustomWelcomeTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Welcome Again!',
          style: Styles.mainWidgetsText1,
        ),
        const SizedBox(height: 2.5),
        Text(
          'Ahmed Jamal',
          style: Styles.mainWidgetsText1.copyWith(fontSize: 18.2),
        ),
      ],
    );
  }
}
