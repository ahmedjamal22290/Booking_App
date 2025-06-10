import 'package:booking_app/features/home/presentation/views/widgets/details_widgets/about_section.dart';
import 'package:booking_app/features/home/presentation/views/widgets/details_widgets/details_image_section.dart';
import 'package:flutter/material.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
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
      ],
    );
  }
}
