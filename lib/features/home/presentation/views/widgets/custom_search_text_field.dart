import 'package:booking_app/features/home/controllers/search_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SearchingController>(builder: (searchController) {
      return Container(
        height: 62.6,
        margin: const EdgeInsets.only(top: 47),
        child: TextFormField(
          controller: searchController.textController,
          onTap: () {
            searchController.searchTaped();
          },
          onFieldSubmitted: (newValue) {
            searchController.search();
          },
          decoration: InputDecoration(
            suffixIcon: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              transitionBuilder: (child, animation) {
                return RotationTransition(
                  turns: Tween<double>(begin: 0.75, end: 1).animate(animation),
                  child: FadeTransition(opacity: animation, child: child),
                );
              },
              child: searchController.isActive
                  ? IconButton(
                      key: const ValueKey('cancel'),
                      onPressed: () {
                        searchController.cancelSearch();
                      },
                      icon: const Icon(
                        Icons.cancel_outlined,
                        size: 30,
                        color: Color(0xffA3A3A3),
                      ),
                    )
                  : IconButton(
                      key: const ValueKey('search'),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        size: 30,
                        color: Color(0xffA3A3A3),
                      ),
                    ),
            ),
            fillColor: Colors.white,
            filled: true,
            hintText: 'Look for homestay',
            hintStyle: const TextStyle(
              color: Color(0xffA3A3A3),
              fontSize: 15.26,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
            ),
          ),
        ),
      );
    });
  }
}
