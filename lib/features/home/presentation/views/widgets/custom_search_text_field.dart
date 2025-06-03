import 'dart:developer';
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
            log('when the UI will change ');
            searchController.searchTaped();
          },
          decoration: InputDecoration(
            suffixIcon: IconButton(
                onPressed: () {
                  if (searchController.isActive) {
                    searchController.cancelSearch();
                  }
                },
                icon: Icon(
                  searchController.isActive
                      ? Icons.cancel_outlined
                      : Icons.search,
                  size: 30,
                  color: const Color(0xffA3A3A3),
                )),
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
