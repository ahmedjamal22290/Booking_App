import 'package:booking_app/core/data/models/hotel_model.dart';
import 'package:booking_app/features/home/presentation/views/widgets/view_all_widgets/hotel_item_vertical.dart';
import 'package:flutter/material.dart';

class ViewAllViewBody extends StatelessWidget {
  const ViewAllViewBody({super.key, required this.list});
  final List<HotelModel> list;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(12),
      itemCount: list.length,
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        return HotelItemVertical(hotel: list[index]);
      },
    );
  }
}
