import 'package:booking_app/core/utils/app_routs.dart';
import 'package:booking_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HotelItemWidget extends StatelessWidget {
  const HotelItemWidget({
    super.key,
    required this.title,
    required this.city,
    required this.price,
    required this.rating,
    required this.image,
  });
  final String title, city, price, image;
  final double rating;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRouts.detailsView);
      },
      child: Container(
        margin: const EdgeInsets.only(right: 11.73),
        height:
            (160.26 / 594.99).toDouble() * MediaQuery.sizeOf(context).height,
        width: (106.52 / 274.46).toDouble() * MediaQuery.sizeOf(context).width,
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
                top: 155.36,
                right: 6.72,
                left: 13.64,
                bottom: 8.64,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      title,
                      style: Styles.itemsTitleStyle,
                    ),
                    Text(
                      city,
                      style: Styles.itemsSubtitleStyle,
                    ),
                    Row(
                      children: [
                        Text(
                          r'$' '$price/',
                          style: Styles.itemsTitleStyle.copyWith(
                              fontSize: 12.2, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'night',
                          style: Styles.itemsTitleStyle.copyWith(
                            fontSize: 12.2,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '⭐ $rating',
                          style: Styles.itemsTitleStyle.copyWith(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
