import 'package:booking_app/core/utils/styles.dart';
import 'package:booking_app/features/home/presentation/views/widgets/details_widgets/grid_service_builder.dart';
import 'package:flutter/material.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({
    super.key,
    required this.service,
  });
  final List<String> service;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13.52),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Services & Facilities',
            style: Styles.detailsMainTitle.copyWith(
              color: const Color(0xff323232),
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 11),
          GridServiceBuilder(
            service: service,
          )
        ],
      ),
    );
  }
}
