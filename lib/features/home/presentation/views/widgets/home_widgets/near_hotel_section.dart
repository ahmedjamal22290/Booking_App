import 'package:booking_app/core/utils/styles.dart';
import 'package:booking_app/features/home/presentation/views/widgets/home_widgets/view_all_button.dart';
import 'package:flutter/material.dart';

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
            const Spacer(),
            const ViewAllButton(),
            const SizedBox(
              width: 12.31,
            )
          ],
        ),
        const SizedBox(height: 9.72),
        SizedBox(
          height:
              (160.26 / 594.99).toDouble() * MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          child: child,
        ),
      ],
    );
  }
}
