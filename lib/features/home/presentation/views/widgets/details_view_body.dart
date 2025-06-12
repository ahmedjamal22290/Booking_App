import 'package:booking_app/features/home/presentation/views/widgets/details_widgets/about_section.dart';
import 'package:booking_app/features/home/presentation/views/widgets/details_widgets/details_image_section.dart';
import 'package:booking_app/features/home/presentation/views/widgets/details_widgets/service_section.dart';
import 'package:flutter/material.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: const CustomScrollView(
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
                child: ServiceSection(),
              ),
            ],
          ),
        ),
        Container(
          height: (50.86 / 594.99) * MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, -0.5),
              blurRadius: 20,
              spreadRadius: 2,
            )
          ]),
          child: Row(
            children: [
              Column(
                children: [
                  Text('price estimate'),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
