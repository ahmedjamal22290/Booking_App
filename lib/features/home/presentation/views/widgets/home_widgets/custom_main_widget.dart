import 'package:booking_app/core/utils/styles.dart';
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
        return Container(
          margin: const EdgeInsets.only(right: 11.73),
          height:
              (160.26 / 594.99).toDouble() * MediaQuery.sizeOf(context).height,
          width:
              (146.52 / 274.46).toDouble() * MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(21.66),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(21.66),
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/home_view_images/test hottel image.jpg',
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.center,
                      colors: [
                        Colors.black.withOpacity(0.53),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 115.36,
                  right: 0,
                  left: (136.52 / 274.46).toDouble() *
                      MediaQuery.sizeOf(context).width /
                      2,
                  bottom: 1.64,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'city',
                        style: Styles.itemsTitleStyle,
                      ),
                      Text(
                        'title',
                        style: Styles.itemsSubtitleStyle,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
