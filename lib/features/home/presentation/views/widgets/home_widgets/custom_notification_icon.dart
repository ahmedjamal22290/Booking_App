import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
            color: Colors.white.withAlpha((0.5 * 255).toInt()),
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
