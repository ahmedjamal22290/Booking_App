import 'package:booking_app/features/home/presentation/views/widgets/hotel_item_widget.dart';
import 'package:flutter/material.dart';

class NearHotelListBuilder extends StatelessWidget {
  const NearHotelListBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return const HotelItemWidget(
          image: 'assets/images/home_view_images/test hottel image.jpg',
          title: 'Paradise Resort',
          city: 'Labuan Bajo',
          price: '480',
          rating: 4.8,
        );
      },
      itemCount: 1,
    );
  }
}
