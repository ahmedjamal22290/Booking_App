import 'package:booking_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({
    super.key,
    this.description,
  });
  final String? description;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 13.52, right: 13.52, bottom: 18.23),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About Us',
            style: Styles.detailsMainTitle.copyWith(
              color: const Color(0xff323232),
              fontSize: 20,
            ),
          ),
          Text(
            description ?? '',
            style: Styles.description1.copyWith(
              color: const Color(0xff787878),
            ),
          )
        ],
      ),
    );
  }
}
