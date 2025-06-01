import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/home_view_images/Rectangle 13.jpg',
          width: MediaQuery.sizeOf(context).width,
          height: 0.409670 * MediaQuery.sizeOf(context).height,
          fit: BoxFit.cover,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: (404.57 / 594.99).toDouble() *
                MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18.66),
                  topRight: Radius.circular(18.66)),
            ),
          ),
        ),
      ],
    );
  }
}
