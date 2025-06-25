import 'package:booking_app/core/utils/app_routs.dart';
import 'package:booking_app/core/utils/styles.dart';
import 'package:booking_app/features/home/controllers/hotel_controller.dart';
import 'package:booking_app/features/home/presentation/views/widgets/home_widgets/builders/explore_hotel_builder.dart';
import 'package:booking_app/features/home/presentation/views/widgets/home_widgets/view_all_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExploreHotelsSection extends StatelessWidget {
  const ExploreHotelsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<HotelController>(
      builder: (controller) {
        if (controller.isLoadingExplore.value) {
          return const Center(child: CircularProgressIndicator());
        }
        if (controller.exploreErrorMessage.isNotEmpty) {
          return Center(child: Text(controller.exploreErrorMessage.value));
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Explore Hotels',
                  style: Styles.mainWidgetsText1.copyWith(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : Colors.black,
                    fontSize: 21.66,
                  ),
                ),
                const Spacer(),
                ViewAllButton(
                  onTap: () {
                    Get.toNamed(
                      AppRouts.viewAllView,
                      arguments: controller.exploreHotels,
                    );
                  },
                ),
                const SizedBox(width: 12.31),
              ],
            ),
            const SizedBox(height: 9.72),
            SizedBox(
              height:
                  (125.26 / 594.99).toDouble() *
                  MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,
              child: ExploreHotelsBuilder(
                exploreHotels: controller.exploreHotels,
              ),
            ),
          ],
        );
      },
    );
  }
}
