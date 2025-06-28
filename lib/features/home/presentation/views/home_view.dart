import 'package:booking_app/features/home/controllers/navigator_controller.dart';
import 'package:booking_app/features/home/presentation/views/widgets/cuatom_navigator_bar.dart';
import 'package:booking_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:booking_app/features/profile/presentation/views/profile_view.dart';
import 'package:booking_app/features/watchlist/presentation/views/watchlist_view_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  final NavController navController = Get.put(NavController());
  static const List<Widget> pages = [
    HomeViewBody(),
    WatchlistViewBody(),
    ProfileView(),
  ];

  HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(() {
        return Scaffold(
          bottomNavigationBar: CustomNavigatorBar(),
          body: pages[navController.selectedIndex.value],
        );
      }),
    );
  }
}
