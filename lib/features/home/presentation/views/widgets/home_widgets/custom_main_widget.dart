import 'package:booking_app/features/home/presentation/views/widgets/home_widgets/near_hotel_section.dart';
import 'package:flutter/material.dart';

class CustomMainContainer extends StatelessWidget {
  const CustomMainContainer({
    super.key,
    required this.child,
  });
  final Widget child;
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
      child: Padding(
        padding: const EdgeInsets.only(left: 17.52, top: 17.27),
        child: NearHotelSection(child: child),
      ),
    );
  }
}
