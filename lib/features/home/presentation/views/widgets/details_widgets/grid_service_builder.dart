import 'package:booking_app/features/home/presentation/views/widgets/details_widgets/service_item_widget.dart';
import 'package:flutter/material.dart';

class GridServiceBuilder extends StatelessWidget {
  const GridServiceBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final service = [
      'Swimming pool',
      '4 Rooms',
      'Parking area',
      'Bars',
      'Fitness center',
      'Play ground',
      'Wi-Fi'
    ];
    return SizedBox(
      height: service.length * 32,
      width: MediaQuery.sizeOf(context).width,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 80 / 14),
        itemCount: service.length,
        itemBuilder: (context, index) {
          return ServiceItemWidget(
            service: service[index],
          );
        },
      ),
    );
  }
}
