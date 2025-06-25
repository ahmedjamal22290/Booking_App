import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //logout icon in the right of screen
        Row(
          children: [
            //change theme option
            Container(
              height: 50,
              alignment: Alignment.topLeft,
              child: Lottie.asset('assets/lottie/change_mode_animation.json'),
            ),
            Spacer(),
            SizedBox(
              height: 80,
              child: Lottie.asset(
                'assets/lottie/logout_animation.json',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        //animated profile icon in the center
        Container(
          alignment: Alignment.topCenter,
          height: 350,
          child: Lottie.asset(
            'assets/lottie/profile_animation.json',

            fit: BoxFit.cover,
          ),
        ),
        //Name of user and his email

        //list of options for settings
      ],
    );
  }
}
