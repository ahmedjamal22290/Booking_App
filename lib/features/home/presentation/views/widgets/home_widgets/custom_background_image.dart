import 'package:flutter/material.dart';

class CustomBackgroundImage extends StatelessWidget {
  const CustomBackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Opacity(
        opacity: 0.75,
        child: Image.asset(
          'assets/images/home_view_images/Rectangle 13.jpg',
          width: MediaQuery.sizeOf(context).width,
          height: 205,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
