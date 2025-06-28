import 'package:booking_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ImageDetailsWidget extends StatelessWidget {
  const ImageDetailsWidget({super.key, required this.name, required this.city});
  final String name, city;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (52 * 594.99) / 305.48,
      width: (154.51 / 274.46).toDouble() * MediaQuery.sizeOf(context).width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Text(
              name,
              style: Styles.detailsMainTitle,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Flexible(
            child: Text(
              city,
              overflow: TextOverflow.ellipsis,

              style: Styles.itemsSubtitleStyle.copyWith(
                fontSize: 12,
                color: const Color(0xffC2C2C2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
