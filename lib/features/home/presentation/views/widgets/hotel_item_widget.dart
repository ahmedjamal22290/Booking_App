import 'package:booking_app/core/data/models/hotel_model.dart';
import 'package:booking_app/core/utils/app_routs.dart';
import 'package:booking_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HotelItemWidget extends StatelessWidget {
  const HotelItemWidget({
    super.key,
    required this.hotelModel,
  });
  final HotelModel hotelModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRouts.detailsView, arguments: hotelModel);
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
              Hero(
                tag: hotelModel.images.first.originalImage,
                child: Image.network(
                  hotelModel.images.first.thumbnail,
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                    colors: [
                      Colors.black.withAlpha((0.53 * 255).toInt()),
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
                      hotelModel.name,
                      style: Styles.itemsTitleStyle,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      hotelModel.name,
                      style: Styles.itemsSubtitleStyle,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      children: [
                        Text(
                          r'$' '${hotelModel.price}/',
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
                          '⭐ ${hotelModel.overallRating != null && hotelModel.overallRating!.length >= 3 ? hotelModel.overallRating!.substring(0, 3) : hotelModel.overallRating ?? ''}',
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
