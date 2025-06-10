import 'package:flutter/material.dart';

class NextImageWIdget extends StatelessWidget {
  const NextImageWIdget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (41.47 / 594.99).toDouble() * MediaQuery.of(context).size.height,
      width: (41.47 / 274.46).toDouble() * MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            9.87,
          ),
          border: Border.all(
            color: Colors.white,
            width: 2.37,
            style: BorderStyle.solid,
          )),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.87),
        child: Image.asset(
          'assets/images/home_view_images/test hottel image.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
