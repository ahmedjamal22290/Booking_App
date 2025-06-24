import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //logout icon in the right of screen
        Lottie.asset('assets/lottie/logout_animation.json'),
        //animated profile icon in the center
        Lottie.asset('assets/lottie/profile_animation.json'),
        //Name of user and his email
        //change theme option
        Lottie.asset('assets/lottie/change_mode_animation.json')
        //list of options for settings
      ],
    );
  }
}
