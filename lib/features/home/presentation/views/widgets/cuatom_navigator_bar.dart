import "package:booking_app/core/utils/constants.dart";
import "package:booking_app/features/home/controllers/navigator_controller.dart";
import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";
import "package:get/get.dart";

class CustomNavigatorBar extends StatelessWidget {
  CustomNavigatorBar({super.key});

  final NavController navController = Get.find<NavController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: Theme.of(context).brightness == Brightness.dark
            ? []
            : [
                BoxShadow(
                  offset: const Offset(0, -0.5),
                  blurRadius: 10,
                  color: Colors.black.withAlpha((0.3 * 255).toInt()),
                ),
              ],
      ),
      child: BottomNavigationBar(
        currentIndex: navController.selectedIndex.value,
        onTap: navController.changeTab,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Constants.buttonsMainColor,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 13,
        unselectedFontSize: 12,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home_view_icons/home not selected .svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/home_view_icons/home selected .svg',
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home_view_icons/watchlis not selected.svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/home_view_icons/watchlist selected.svg',
            ),
            label: 'Watchlist',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home_view_icons/profile not selected .svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/icons/home_view_icons/profile selected.svg',
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
