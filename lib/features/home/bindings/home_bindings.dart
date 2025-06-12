import 'package:booking_app/core/utils/api_service.dart';
import 'package:booking_app/features/home/controllers/search_controller.dart';
import 'package:booking_app/features/home/data/repos/hotel_repo.dart';
import 'package:booking_app/features/home/data/repos/hotel_repo_impl.dart';
import 'package:booking_app/features/start/controller/hotel_controller.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(SearchingController());
    Get.lazyPut<HotelRepo>(
      () => HotelRepoImpl(apiService: ApiService(dio: Dio())),
    );
    Get.lazyPut(() => HotelController(hotelRepo: Get.find()));
  }
}
