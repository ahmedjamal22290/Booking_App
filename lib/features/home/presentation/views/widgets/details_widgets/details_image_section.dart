import 'package:booking_app/features/home/presentation/views/widgets/details_widgets/details_custom_app_bar.dart';
import 'package:booking_app/features/home/presentation/views/widgets/details_widgets/image_details_widget.dart';
import 'package:booking_app/features/home/presentation/views/widgets/details_widgets/next_image_widget.dart';
import 'package:flutter/material.dart';

class DetailsImageSection extends StatelessWidget {
  const DetailsImageSection({
    super.key,
  });

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
            PageView(
              scrollDirection: Axis.horizontal,
              children: const [
                CustomShadowImage(
                  image: 'assets/images/home_view_images/test hottel image.jpg',
                ),
                CustomShadowImage(
                  image: 'assets/images/home_view_images/test hottel image.jpg',
                ),
                CustomShadowImage(
                  image: 'assets/images/home_view_images/test hottel image.jpg',
                ),
              ],
            ),
            const Positioned(
              top: 47.98,
              right: 13.52,
              left: 13.52,
              child: DetailsCustomAppBar(),
            ),
            const Positioned(
              bottom: 16.31,
              left: 13.52,
              child: ImageDetailsWidget(),
            ),
            const Positioned(
              bottom: 16.31,
              right: 13.52,
              child: NextImageWIdget(),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomShadowImage extends StatelessWidget {
  const CustomShadowImage({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          image,
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.black.withOpacity(0.4),
                Colors.transparent,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
