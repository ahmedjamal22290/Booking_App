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
        Flexible(
          child: Text(
            constantText,
            overflow: TextOverflow.ellipsis,

            style: TextStyle(
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.grey
                  : Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Flexible(
          child: GestureDetector(
            onTap: () {
              Get.offNamed(navPage);
            },
            child: Text(
              navText,
              overflow: TextOverflow.ellipsis,

              style: const TextStyle(
                color: Constants.buttonsMainColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
