import 'package:booking_app/features/home/presentation/views/widgets/details_widgets/details_image_section.dart';
import 'package:flutter/material.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: DetailsImageSection(),
        )
      ],
    );
  }
}
