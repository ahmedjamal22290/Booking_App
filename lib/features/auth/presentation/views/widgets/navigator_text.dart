import 'package:booking_app/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigatorText extends StatelessWidget {
  const NavigatorText({
    super.key,
    required this.constantText,
    required this.navText,
    required this.navPage,
  });
  final String constantText, navText, navPage;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          constantText,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.offNamed(navPage);
          },
          child: Text(
            navText,
            style: const TextStyle(
              color: Constants.buttonsMainColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
