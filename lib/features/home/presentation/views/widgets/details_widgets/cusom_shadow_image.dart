import 'package:cached_network_image/cached_network_image.dart';
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
        CachedNetworkImage(
          imageUrl: image,
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
          errorWidget: (context, url, error) {
            return const Icon(Icons.error);
          },
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.black.withAlpha((0.4 * 255).toInt()),
                Colors.transparent,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
