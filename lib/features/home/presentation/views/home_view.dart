import 'package:booking_app/features/home/controllers/navigator_controller.dart';
import 'package:booking_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  final NavController navController = Get.put(NavController());
  static const List<Widget> pages = [
    HomeViewBody(),
    Center(child: Text('Watchlist')),
    Center(child: Text('Profile')),
  ];

  HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Obx(() {
      return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
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
        ),
        body: pages[navController.selectedIndex.value],
      );
    }));
  }
}
