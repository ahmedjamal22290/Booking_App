import "package:booking_app/features/home/controllers/navigator_controller.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

class CustomNavigatorBar extends StatelessWidget {
  CustomNavigatorBar({
    super.key,
  });

  final NavController navController = Get.find<NavController>();

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: navController.selectedIndex.value,
      onTap: navController.changeTab,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border), label: 'Watchlist'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outline), label: 'Profile'),
      ],
    );
  }
}
