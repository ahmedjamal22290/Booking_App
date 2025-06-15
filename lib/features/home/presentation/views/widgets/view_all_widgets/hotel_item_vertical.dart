import 'package:booking_app/core/data/models/hotel_model.dart';
import 'package:booking_app/core/utils/app_routs.dart';
import 'package:booking_app/core/utils/styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HotelItemVertical extends StatelessWidget {
  const HotelItemVertical({super.key, required this.hotel});
  final HotelModel hotel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(AppRouts.detailsView, arguments: hotel);
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Hero(
                tag: hotel.images.first.originalImage,
                child: CachedNetworkImage(
                  imageUrl: hotel.images.first.thumbnail,
                  height: 80,
                  width: 80,
                  fit: BoxFit.cover,
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    hotel.name,
                    style: Styles.itemsTitleStyle.copyWith(color: Colors.black),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    hotel.city ?? hotel.name,
                    style:
                        Styles.itemsSubtitleStyle.copyWith(color: Colors.black),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Text(
                        '${hotel.price.toString()}/',
                        style: Styles.itemsTitleStyle.copyWith(
                            fontSize: 12.2,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      Text(
                        'night',
                        style: Styles.itemsTitleStyle.copyWith(
                            fontSize: 12.2,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            Column(
              children: [
                const Icon(Icons.star, color: Colors.amber, size: 18),
                Text(
                  hotel.overallRating != null &&
                          hotel.overallRating!.length >= 3
                      ? hotel.overallRating!.substring(0, 3)
                      : hotel.overallRating ?? 'N/A',
                  style: Styles.itemsTitleStyle
                      .copyWith(fontSize: 14, color: Colors.black),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
