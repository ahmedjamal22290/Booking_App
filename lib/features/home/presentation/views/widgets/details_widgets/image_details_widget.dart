import 'package:booking_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ImageDetailsWidget extends StatelessWidget {
  const ImageDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (52 * 594.99) / 305.48,
      width: (154.51 / 274.46).toDouble() * MediaQuery.sizeOf(context).width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Paradise Resort',
            style: Styles.detailsMainTitle,
          ),
          Text(
            'Pantai Waecicu, Labuan Bajo, Kec. Komodo, Kabupaten Manggarai Barat, Nusa Tenggara Tim. 86554',
            style: Styles.itemsSubtitleStyle
                .copyWith(fontSize: 12, color: const Color(0xffC2C2C2)),
          ),
        ],
      ),
    );
  }
}
