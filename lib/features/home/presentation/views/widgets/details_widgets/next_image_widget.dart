import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class NextImageWIdget extends StatelessWidget {
  const NextImageWIdget({
    super.key,
    required this.image,
  });
  final String image;
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
        child: CachedNetworkImage(
          imageUrl: image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
