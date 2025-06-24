import 'package:booking_app/features/home/presentation/views/widgets/home_widgets/custom_notification_icon.dart';
import 'package:booking_app/features/home/presentation/views/widgets/home_widgets/custom_welcome_text_widget.dart';
import 'package:flutter/material.dart';

class WelcomeBar extends StatelessWidget {
  const WelcomeBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
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
