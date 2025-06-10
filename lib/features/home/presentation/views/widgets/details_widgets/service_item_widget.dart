import 'package:booking_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ServiceItemWidget extends StatelessWidget {
  const ServiceItemWidget({
    super.key,
    required this.service,
  });
  final String service;
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
            service,
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
