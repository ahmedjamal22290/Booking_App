import 'package:booking_app/core/utils/styles.dart';
import 'package:booking_app/features/home/presentation/views/widgets/details_widgets/about_section.dart';
import 'package:booking_app/features/home/presentation/views/widgets/details_widgets/details_image_section.dart';
import 'package:booking_app/features/home/presentation/views/widgets/details_widgets/service_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    final service = [
      'Swimming pool',
      '4 Rooms',
      'Parking area',
      'Bars',
      'Fitness center',
      'Play ground',
      'Wi-Fi'
    ];
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: DetailsImageSection(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 26.23,
          ),
        ),
        SliverToBoxAdapter(
          child: AboutSection(),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13.52),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Services & Facilities',
                  style: Styles.detailsMainTitle.copyWith(
                    color: const Color(0xff323232),
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 11),
                SizedBox(
                  height: service.length * 32,
                  width: MediaQuery.sizeOf(context).width,
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, childAspectRatio: 80 / 14),
                    itemCount: service.length,
                    itemBuilder: (context, index) {
                      return ServiceItemWidget(
                        service: service[index],
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
