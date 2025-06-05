import 'package:booking_app/core/utils/styles.dart';
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

class NearHotelSection extends StatelessWidget {
  const NearHotelSection({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Hotel Near You',
              style: Styles.mainWidgetsText1.copyWith(
                color: Colors.black,
                fontSize: 21.66,
              ),
            ),
            Spacer(),
            ViewAllButton(),
            SizedBox(
              width: 12.31,
            )
          ],
        ),
        const SizedBox(height: 9.72),
        SizedBox(
            height: (160.26 / 594.99).toDouble() *
                MediaQuery.sizeOf(context).height,
            width:
                (106.52 / 274.46).toDouble() * MediaQuery.sizeOf(context).width,
            child: child),
      ],
    );
  }
}

class ViewAllButton extends StatelessWidget {
  const ViewAllButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Text(
        'View All',
        style: TextStyle(
          color: Color(0xff2C67FF),
          fontFamily: 'sf_pro',
          fontWeight: FontWeight.w400,
          fontSize: 13.2,
        ),
      ),
    );
  }
}
