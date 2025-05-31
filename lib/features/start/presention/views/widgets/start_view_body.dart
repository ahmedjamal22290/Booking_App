import 'package:booking_app/features/start/presention/views/widgets/first_view.dart';
import 'package:booking_app/features/start/presention/views/widgets/second_view.dart';
import 'package:booking_app/features/start/presention/views/widgets/thired_view.dart';
import 'package:flutter/material.dart';

class StartViewBody extends StatelessWidget {
  const StartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: const BouncingScrollPhysics(),
      children: const [
        FirstView(),
        SecondView(),
        ThiredView(),
      ],
    );
  }
}
