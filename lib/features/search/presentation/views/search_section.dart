import 'package:booking_app/features/home/controllers/search_controller.dart';
import 'package:booking_app/features/home/presentation/views/widgets/view_all_widgets/hotel_item_vertical.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<SearchingController>(builder: (controller) {
      if (controller.isLoading.value) {
        return const Center(child: CircularProgressIndicator());
      }
      if (controller.error.isNotEmpty) {
        return Text(controller.error.value);
      }
      if (controller.hotels.isEmpty) {
        return const Center(child: Text('start Searching'));
      }
      return ListView.separated(
          itemCount: controller.hotels.length,
          separatorBuilder: (context, index) {
            return const SizedBox(height: 5);
          },
          itemBuilder: (context, index) {
            controller.hotels[index].city = controller.textController.text;
            return HotelItemVertical(
              hotel: controller.hotels[index],
            );
          });
    });
  }
}
