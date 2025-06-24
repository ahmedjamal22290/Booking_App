import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsCustomAppBar extends StatelessWidget {
  const DetailsCustomAppBar({
    super.key,
    required this.onPressed,
    required this.isF,
  });
  final void Function() onPressed;
  final bool isF;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            height: 39.75,
            width: 39.75,
            decoration: BoxDecoration(
              color: Colors.white.withAlpha((0.5 * 255).toInt()),
              borderRadius: BorderRadius.circular(9),
            ),
            child: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.white,
                size: 20,
              ),
            )),
        const Spacer(),
        Container(
          height: 39.75,
          width: 39.75,
          decoration: BoxDecoration(
            color: Colors.white.withAlpha((0.5 * 255).toInt()),
            borderRadius: BorderRadius.circular(9),
          ),
          child: IconButton(
            onPressed: onPressed,
            icon: Icon(
              Icons.favorite,
              color: isF ? Colors.red : Colors.grey,
              size: 23,
            ),
          ),
        ),
      ],
    );
  }
}
