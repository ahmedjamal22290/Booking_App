import 'package:booking_app/features/home/presentation/views/widgets/view_all_widgets/hotel_item_vertical.dart';
import 'package:booking_app/features/watchlist/controller/watchlist_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class WatchlistViewBody extends StatelessWidget {
  const WatchlistViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<WatchlistController>(
      builder: (controller) {
        controller.getUserWatchlist();
        if (controller.watchList.isEmpty) {
          return Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Opacity(
                  opacity: 0.7,

                  child: Lottie.asset(
                    "assets/lottie/empty_animation.json",
                    height: 150,
                  ),
                ),
                Text(
                  'Watchlist is Empty',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
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
      },
    );
  }
}
