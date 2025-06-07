import 'package:booking_app/core/utils/styles.dart';
import 'package:booking_app/features/home/presentation/views/widgets/home_widgets/explore_item.dart';
import 'package:booking_app/features/home/presentation/views/widgets/home_widgets/near_hotel_list_builder.dart';
import 'package:booking_app/features/home/presentation/views/widgets/home_widgets/near_hotel_section.dart';
import 'package:booking_app/features/home/presentation/views/widgets/home_widgets/view_all_button.dart';
import 'package:flutter/material.dart';

class CustomMainContainer extends StatelessWidget {
  const CustomMainContainer({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: (404.57 / 594.99).toDouble() * MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(18.66), topRight: Radius.circular(18.66)),
      ),
      child: const Padding(
        padding: EdgeInsets.only(left: 17.52, top: 17.27),
        child: Column(
          children: [
            NearHotelSection(),
            SizedBox(height: 17.27),
            ExploreHotelsSection()
          ],
        ),
      ),
    );
  }
}

class ExploreHotelsSection extends StatelessWidget {
  const ExploreHotelsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Explore Hotels',
              style: Styles.mainWidgetsText1.copyWith(
                color: Colors.black,
                fontSize: 21.66,
              ),
            ),
            const Spacer(),
            const ViewAllButton(),
            const SizedBox(
              width: 12.31,
            )
          ],
        ),
        const SizedBox(height: 9.72),
        SizedBox(
          height:
              (130.26 / 594.99).toDouble() * MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          child: const ExploreHotelsBuilder(),
        ),
      ],
    );
  }
}

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
