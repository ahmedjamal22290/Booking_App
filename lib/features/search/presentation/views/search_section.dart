import 'package:booking_app/core/data/models/hotel_model.dart';
import 'package:booking_app/core/data/models/image_model.dart';
import 'package:booking_app/features/home/presentation/views/widgets/view_all_widgets/hotel_item_vertical.dart';
import 'package:flutter/material.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    HotelModel hotel = HotelModel(
        name: 'name',
        description: 'description',
        link: 'link',
        overallRating: '4.3',
        price: '245',
        images: [
          ImageModel(thumbnail: 'thumbnail', originalImage: 'originalImage')
        ],
        amenities: [
          'amenities',
          'asd',
          'adss'
        ]);
    return ListView.separated(
        itemCount: 15,
        separatorBuilder: (context, index) {
          return const SizedBox(height: 5);
        },
        itemBuilder: (context, index) {
          return HotelItemVertical(
            hotel: hotel,
          );
        });
  }
}
