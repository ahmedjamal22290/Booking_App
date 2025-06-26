import 'package:booking_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class FirstView extends StatelessWidget {
  const FirstView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 0.59116 * MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 0.20504 * MediaQuery.of(context).size.height,
                ),
                child: SizedBox(
                  height: 0.20000 * MediaQuery.of(context).size.height,
                  width: 0.3577 * MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/images/start_images/Group 9.png',
                    height: 69.1,
                    width: 69.1,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 52.03),
        Padding(
          padding: EdgeInsets.only(
            left: 0.09790 * MediaQuery.of(context).size.width,
            right: 0.09870 * MediaQuery.of(context).size.width,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Your journey begins with comfort and care.',
                style: Styles.headlines1.copyWith(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8.8),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  'Start your trip stress-free with smooth check-ins and cozy stays designed for your comfort.',
                  style: Styles.description1,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
