import 'package:booking_app/core/data/models/hotel_model.dart';
import 'package:booking_app/core/utils/app_routs.dart';
import 'package:booking_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HotelItemWidget extends StatelessWidget {
  const HotelItemWidget({super.key, required this.hotelModel});
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
        width: 106.52 * 1.5,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(21.66)),
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
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 8,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        hotelModel.name,
                        style: Styles.itemsTitleStyle,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      Text(
                        hotelModel.name,
                        style: Styles.itemsSubtitleStyle,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      Row(
                        children: [
                          Text(
                            r'$'
                            '${hotelModel.price}/',
                            style: Styles.itemsTitleStyle.copyWith(
                              fontSize: 12.2,
                              fontWeight: FontWeight.w500,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          Text(
                            'night',
                            style: Styles.itemsTitleStyle.copyWith(
                              fontSize: 12.2,
                              fontWeight: FontWeight.w400,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          const Spacer(),
                          Text(
                            '⭐ ${hotelModel.overallRating != null && hotelModel.overallRating!.length >= 3 ? hotelModel.overallRating!.substring(0, 3) : hotelModel.overallRating ?? ''}',
                            style: Styles.itemsTitleStyle.copyWith(
                              fontSize: 14,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ],
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
