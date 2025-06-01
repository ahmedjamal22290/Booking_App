import 'package:booking_app/features/home/presentation/views/home_view.dart';
import 'package:booking_app/features/start/presentation/views/start_view.dart';
import 'package:get/get.dart';

abstract class AppRouts {
  static const startView = '/';
  static const homeView = '/homeView';
  static List<GetPage<dynamic>> routs = [
    GetPage(
      name: startView,
      page: () => const StartView(),
    ),
    GetPage(
      name: homeView,
      page: () => const HomeView(),
    ),
  ];
}
