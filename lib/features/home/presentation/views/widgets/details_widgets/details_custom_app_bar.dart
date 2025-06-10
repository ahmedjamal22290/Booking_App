import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsCustomAppBar extends StatelessWidget {
  const DetailsCustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            height: 39.75,
            width: 39.75,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.5),
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
            color: Colors.white.withOpacity(0.5),
            borderRadius: BorderRadius.circular(9),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite,
              color: Colors.red,
              size: 23,
            ),
          ),
        ),
      ],
    );
  }
}
