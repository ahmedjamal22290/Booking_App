import 'package:booking_app/core/data/models/hotel_model.dart';
import 'package:booking_app/features/home/presentation/views/widgets/details_widgets/about_section.dart';
import 'package:booking_app/features/home/presentation/views/widgets/details_widgets/details_button.dart';
import 'package:booking_app/features/home/presentation/views/widgets/details_widgets/details_image_section.dart';
import 'package:booking_app/features/home/presentation/views/widgets/details_widgets/service_section.dart';
import 'package:flutter/material.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key, required this.hotelModel});
  final HotelModel hotelModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: DetailsImageSection(
                  hotelModel: hotelModel,
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 26.23,
                ),
              ),
              SliverToBoxAdapter(
                child: hotelModel.description != null
                    ? AboutSection(
                        description: hotelModel.description,
                      )
                    : const SizedBox(),
              ),
              SliverToBoxAdapter(
                child: ServiceSection(
                  service: hotelModel.amenities,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: (50.86 / 594.99) * MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, -0.5),
              blurRadius: 20,
              spreadRadius: 2,
            )
          ]),
          child: DetailsButton(
            link: hotelModel.link ?? 'none',
            price: hotelModel.price,
          ),
        )
      ],
    );
  }
}
