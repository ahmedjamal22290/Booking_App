import 'package:booking_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ExploreItem extends StatelessWidget {
  const ExploreItem({
    super.key,
    required this.image,
    required this.name,
    required this.city,
  });
  final String image, name, city;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 11.73),
      height: (160.26 / 594.99).toDouble() * MediaQuery.sizeOf(context).height,
      width: (146.52 / 274.46).toDouble() * MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21.66),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(21.66),
        child: Stack(
          children: [
            Image.asset(
              image,
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                  colors: [
                    Colors.black.withOpacity(0.53),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
            Positioned(
              top: 115.36,
              right: 0,
              left: 0,
              bottom: 1.64,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    city,
                    style: Styles.itemsTitleStyle,
                  ),
                  Text(
                    name,
                    style: Styles.itemsSubtitleStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
