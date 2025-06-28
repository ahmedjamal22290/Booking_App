import 'package:booking_app/core/data/models/hotel_model.dart';
import 'package:booking_app/core/utils/app_routs.dart';
import 'package:booking_app/core/utils/styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExploreItem extends StatelessWidget {
  const ExploreItem({super.key, required this.hotelModel});
  final HotelModel hotelModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRouts.detailsView, arguments: hotelModel);
      },
      child: Container(
        margin: const EdgeInsets.only(right: 11.73),
        height: 160.26 * 1.5,
        width: 146.52 * 1.5,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(21.66)),
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
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 8,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        child: Text(
                          hotelModel.name,
                          style: Styles.itemsSubtitleStyle,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
