import 'package:booking_app/core/utils/constants.dart';
import 'package:booking_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailsButton extends StatelessWidget {
  const DetailsButton({
    super.key,
    required this.price,
    required this.link,
  });
  final String price, link;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 11.73, vertical: 9.12),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'price estimate',
                style: Styles.description1.copyWith(
                  color: const Color(0xff787878),
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Text(
                    price,
                    style: Styles.itemsTitleStyle.copyWith(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    '/night',
                    style: Styles.itemsTitleStyle.copyWith(
                        fontSize: 13.2,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff787878)),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: () async {
              if (await canLaunchUrl(Uri.parse(link))) {
                await launchUrl(Uri.parse(link));
              } else {
                throw 'Could not launch $link';
              }
            },
            child: Container(
              height: 40.63,
              width: 111.72,
              decoration: BoxDecoration(
                color: Constants.buttonsMainColor,
                borderRadius: BorderRadius.circular(14),
              ),
              child: const Center(
                child: Text(
                  'Reserve Now',
                  style: Styles.buttonText2,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
