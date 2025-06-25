import 'package:booking_app/features/home/controllers/search_controller.dart';
import 'package:booking_app/features/home/presentation/views/widgets/home_widgets/sections/explore_hotels_section.dart';
import 'package:booking_app/features/home/presentation/views/widgets/home_widgets/sections/near_hotel_section.dart';
import 'package:booking_app/features/search/presentation/views/search_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomMainContainer extends StatelessWidget {
  const CustomMainContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchingController>(
      builder: (controller) {
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 350),
          transitionBuilder: (child, animation) {
            return FadeTransition(opacity: animation, child: child);
          },
          child: Container(
            key: ValueKey(controller.isActive),
            height:
                (404.57 / 594.99).toDouble() *
                MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18.66),
                topRight: Radius.circular(18.66),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 17.52, top: 17.27),
              child: ContentList(),
            ),
          ),
        );
      },
    );
  }
}

class ContentList extends StatelessWidget {
  const ContentList({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchingController>(
      builder: (controller) {
        if (controller.isActive) {
          return const SearchSection();
        } else {
          return const Column(
            children: [
              NearHotelSection(),
              SizedBox(height: 17.27),
              ExploreHotelsSection(),
            ],
          );
        }
      },
    );
  }
}
