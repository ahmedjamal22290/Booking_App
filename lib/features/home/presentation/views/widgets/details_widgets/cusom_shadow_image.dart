import 'package:flutter/material.dart';

class CustomShadowImage extends StatelessWidget {
  const CustomShadowImage({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          image,
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.black.withOpacity(0.4),
                Colors.transparent,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
