import 'package:booking_app/core/utils/app_routs.dart';
import 'package:booking_app/core/utils/styles.dart';
import 'package:booking_app/features/home/presentation/views/widgets/home_widgets/builders/near_hotel_list_builder.dart';
import 'package:booking_app/features/home/presentation/views/widgets/home_widgets/view_all_button.dart';
import 'package:booking_app/features/home/controllers/hotel_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NearHotelSection extends StatelessWidget {
  const NearHotelSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<HotelController>(
      builder: (controller) {
        if (controller.isLoadingNearby.value) {
          return const CircularProgressIndicator();
        }
        if (controller.nearbyErrorMessage.isNotEmpty) {
          return Center(child: Text(controller.nearbyErrorMessage.value));
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Hotels Near You',
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
                      arguments: controller.nearHotels,
                    );
                  },
                ),
                const SizedBox(width: 12.31),
              ],
            ),
            const SizedBox(height: 9.72),
            SizedBox(
              height:
                  (160.26 / 594.99).toDouble() *
                  MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,
              child: NearHotelListBuilder(items: controller.nearHotels),
            ),
          ],
        );
      },
    );
  }
}
