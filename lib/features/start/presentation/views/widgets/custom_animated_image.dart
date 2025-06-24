import 'package:flutter/material.dart';

class CustomAnimatedImage extends StatelessWidget {
  const CustomAnimatedImage({
    super.key,
    required this.animationPos1,
    required this.opcityAnimation,
    required this.image,
  });

  final Animation<Offset> animationPos1;
  final Animation<double> opcityAnimation;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: animationPos1.value.dx * MediaQuery.of(context).size.height,
      right: animationPos1.value.dy * MediaQuery.of(context).size.width,
      child: SizedBox(
        height: 0.20000 * MediaQuery.of(context).size.height,
        width: 0.3577 * MediaQuery.of(context).size.width,
        child: Image.asset(
          image,
          height: 69.1,
          width: 69.1,
          opacity: opcityAnimation,
        ),
      ),
    );
  }
}
