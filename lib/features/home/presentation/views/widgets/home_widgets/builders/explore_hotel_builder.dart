import 'package:booking_app/core/data/models/hotel_model.dart';
import 'package:booking_app/features/home/presentation/views/widgets/home_widgets/explore_item.dart';
import 'package:flutter/material.dart';

class ExploreHotelsBuilder extends StatelessWidget {
  const ExploreHotelsBuilder({
    super.key,
    required this.exploreHotels,
  });
  final List<HotelModel> exploreHotels;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: exploreHotels.length,
      itemBuilder: (context, index) {
        return ExploreItem(
          hotelModel: exploreHotels[index],
        );
      },
    );
  }
}
