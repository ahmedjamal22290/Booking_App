import 'package:booking_app/core/data/models/hotel_model.dart';
import 'package:booking_app/features/home/presentation/views/widgets/hotel_item_widget.dart';
import 'package:flutter/material.dart';

class NearHotelListBuilder extends StatelessWidget {
  const NearHotelListBuilder({
    super.key,
    required this.items,
  });
  final List<HotelModel> items;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return HotelItemWidget(
          hotelModel: items[index],
        );
      },
      itemCount: items.length,
    );
  }
}
