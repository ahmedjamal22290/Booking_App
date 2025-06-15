import 'package:booking_app/features/home/controllers/hotel_controller.dart';
import 'package:booking_app/features/home/presentation/views/widgets/home_widgets/explore_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExploreHotelsBuilder extends StatelessWidget {
  const ExploreHotelsBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetX<HotelController>(builder: (controller) {
      if (controller.isLoadingExplore.value) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      if (controller.exploreErrorMessage.isNotEmpty) {
        return Center(
          child: Text(controller.exploreErrorMessage.value),
        );
      }
      return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: controller.exploreHotels.length,
        itemBuilder: (context, index) {
          return ExploreItem(
            hotelModel: controller.exploreHotels[index],
          );
        },
      );
    });
  }
}
