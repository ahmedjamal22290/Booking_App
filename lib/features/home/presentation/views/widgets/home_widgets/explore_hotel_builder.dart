import 'package:booking_app/features/home/presentation/views/widgets/home_widgets/explore_item.dart';
import 'package:flutter/material.dart';

class ExploreHotelsBuilder extends StatelessWidget {
  const ExploreHotelsBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 15,
      itemBuilder: (context, index) {
        return const ExploreItem(
          image: 'assets/images/home_view_images/test hottel image.jpg',
          name: 'Paradise Resort',
          city: 'Labuan Bajo',
        );
      },
    );
  }
}
