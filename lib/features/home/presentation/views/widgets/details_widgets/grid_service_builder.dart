import 'package:booking_app/features/home/presentation/views/widgets/details_widgets/service_item_widget.dart';
import 'package:flutter/material.dart';

class GridServiceBuilder extends StatelessWidget {
  const GridServiceBuilder({super.key, required this.service});
  final List<String> service;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: service.length * 23,
      width: MediaQuery.sizeOf(context).width,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: MediaQuery.sizeOf(context).width <= 500
              ? 2
              : (MediaQuery.sizeOf(context).width / 250).toInt(),
          childAspectRatio: 80 / 14,
        ),
        itemCount: service.length,
        itemBuilder: (context, index) {
          return ServiceItemWidget(service: service[index]);
        },
      ),
    );
  }
}
