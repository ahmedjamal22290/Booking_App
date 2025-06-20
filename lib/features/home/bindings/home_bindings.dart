import 'package:booking_app/core/utils/api_service.dart';
import 'package:booking_app/features/home/controllers/search_controller.dart';
import 'package:booking_app/features/home/data/repos/hotel_repo.dart';
import 'package:booking_app/features/home/data/repos/hotel_repo_impl.dart';
import 'package:booking_app/features/home/controllers/hotel_controller.dart';
import 'package:booking_app/features/watchlist/controller/watchlist_controller.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(WatchlistController());
    Get.put(SearchingController());
    Get.put<HotelRepo>(
      HotelRepoImpl(apiService: ApiService(dio: Dio())),
    );
    Get.put(HotelController(hotelRepo: Get.find()));
  }
}
