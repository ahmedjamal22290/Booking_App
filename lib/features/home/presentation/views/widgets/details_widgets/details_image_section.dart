import 'package:booking_app/core/data/models/hotel_model.dart';
import 'package:booking_app/features/home/presentation/views/widgets/details_widgets/cusom_shadow_image.dart';
import 'package:booking_app/features/home/presentation/views/widgets/details_widgets/details_custom_app_bar.dart';
import 'package:booking_app/features/home/presentation/views/widgets/details_widgets/image_details_widget.dart';
import 'package:booking_app/features/home/presentation/views/widgets/details_widgets/next_image_widget.dart';
import 'package:flutter/material.dart';

class DetailsImageSection extends StatefulWidget {
  const DetailsImageSection({
    super.key,
    required this.hotelModel,
  });
  final HotelModel hotelModel;

  @override
  State<DetailsImageSection> createState() => _DetailsImageSectionState();
}

class _DetailsImageSectionState extends State<DetailsImageSection> {
  int? nextImageindex;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (305.48 / 594.99).toDouble() * MediaQuery.sizeOf(context).height,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(18),
        bottomRight: Radius.circular(18),
      )),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(18),
          bottomRight: Radius.circular(18),
        ),
        child: Stack(
          children: [
            PageView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.hotelModel.images.length,
              onPageChanged: (value) {
                if (widget.hotelModel.images.length - 1 <= value) {
                  nextImageindex = value;
                } else {
                  nextImageindex = value + 1;
                }
                setState(() {});
              },
              itemBuilder: (context, index) {
                return Hero(
                  tag: widget.hotelModel.images.first.originalImage,
                  child: CustomShadowImage(
                      image: widget.hotelModel.images[index].originalImage),
                );
              },
            ),
            const Positioned(
              top: 47.98,
              right: 13.52,
              left: 13.52,
              child: DetailsCustomAppBar(),
            ),
            Positioned(
              bottom: 16.31,
              left: 13.52,
              child: ImageDetailsWidget(
                name: widget.hotelModel.name,
                city: widget.hotelModel.name,
              ),
            ),
            Positioned(
              bottom: 16.31,
              right: 13.52,
              child: NextImageWIdget(
                image: widget.hotelModel.images[nextImageindex ?? 0].thumbnail,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
