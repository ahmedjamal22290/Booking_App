import 'package:booking_app/core/data/models/hotel_model.dart';
import 'package:booking_app/core/utils/app_routs.dart';
import 'package:booking_app/core/utils/styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExploreItem extends StatelessWidget {
  const ExploreItem({
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
        width: (146.52 / 274.46).toDouble() * MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(21.66),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(21.66),
          child: Stack(
            children: [
              CachedNetworkImage(
                imageUrl: hotelModel.images.first.thumbnail,
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
                      Colors.black.withAlpha((0.53 * 255).toInt()),
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
                      hotelModel.name,
                      style: Styles.itemsSubtitleStyle,
                    ),
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
