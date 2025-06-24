import 'package:booking_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

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
