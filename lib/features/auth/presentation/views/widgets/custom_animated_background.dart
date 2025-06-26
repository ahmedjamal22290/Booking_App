import 'package:flutter/material.dart';

class CustomAnimatedBackground extends StatelessWidget {
  const CustomAnimatedBackground({
    super.key,
    required this.animated,
    required this.screenH,
  });

  final bool animated;
  final double screenH;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 700),
      curve: Curves.easeInOutCubic,
      height: animated ? screenH * 0.36 : 30,
      decoration: BoxDecoration(
        boxShadow: Theme.of(context).brightness == Brightness.dark
            ? [
                BoxShadow(
                  color: const Color.fromARGB(255, 73, 72, 72),
                  spreadRadius: 4,
                  blurRadius: 10,
                ),
              ]
            : const [
                BoxShadow(color: Colors.black, spreadRadius: 4, blurRadius: 50),
              ],
        color: const Color(0xff121A2C),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(animated ? 200 : 18),
          bottomRight: Radius.circular(animated ? 200 : 18),
        ),
      ),
    );
  }
}
