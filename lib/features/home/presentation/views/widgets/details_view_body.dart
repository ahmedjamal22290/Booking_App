import 'package:booking_app/core/utils/styles.dart';
import 'package:booking_app/features/home/presentation/views/widgets/details_widgets/about_section.dart';
import 'package:booking_app/features/home/presentation/views/widgets/details_widgets/details_image_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
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
                ServiceItemWidget()
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ServiceItemWidget extends StatelessWidget {
  const ServiceItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180.61,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/icons/home_view_icons/check_box_icon.svg',
            height: 18.39,
          ),
          const SizedBox(width: 5),
          Text(
            'Swimming pool',
            textWidthBasis: TextWidthBasis.parent,
            overflow: TextOverflow.fade,
            style: Styles.description1.copyWith(
              color: const Color(0xff787878),
            ),
          )
        ],
      ),
    );
  }
}
