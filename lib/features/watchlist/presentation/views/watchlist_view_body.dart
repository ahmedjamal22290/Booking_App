import 'package:booking_app/features/home/presentation/views/widgets/view_all_widgets/hotel_item_vertical.dart';
import 'package:booking_app/features/watchlist/controller/watchlist_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WatchlistViewBody extends StatelessWidget {
  const WatchlistViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<WatchlistController>(builder: (controller) {
      controller.getUserWatchlist();
      if (controller.watchList.isEmpty) {
        return const Center(
          child: Text('watchlist'),
        );
      }
      return Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemCount: controller.watchList.length,
          separatorBuilder: (context, index) {
            return const SizedBox(height: 5);
          },
          itemBuilder: (context, index) {
            return HotelItemVertical(hotel: controller.watchList[index]);
          },
        ),
      );
    });
  }
}
