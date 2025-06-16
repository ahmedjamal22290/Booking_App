import 'package:booking_app/core/utils/app_routs.dart';
import 'package:booking_app/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigatorText extends StatelessWidget {
  const NavigatorText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account? ",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.toNamed(AppRouts.registerView);
          },
          child: Text(
            'Register Now',
            style: TextStyle(
              color: Constants.buttonsMainColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
