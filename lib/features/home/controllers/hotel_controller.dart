import 'package:booking_app/core/data/models/hotel_model.dart';
import 'package:booking_app/features/auth/controller/auth_controller.dart';

import 'package:booking_app/features/home/data/repos/hotel_repo.dart';
import 'package:booking_app/features/watchlist/controller/watchlist_controller.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HotelController extends GetxController {
  var nearHotels = <HotelModel>[].obs;
  var exploreHotels = <HotelModel>[].obs;
  final _storage = GetStorage();
  final HotelRepo hotelRepo;
  WatchlistController watchlistController = Get.find<WatchlistController>();
  AuthController authController = Get.find<AuthController>();

  var isLoadingNearby = false.obs;
  var isLoadingExplore = false.obs;

  var nearbyErrorMessage = ''.obs;
  var exploreErrorMessage = ''.obs;

  HotelController({required this.hotelRepo});

  @override
  void onInit() {
    super.onInit();
    fetchNearbyHotels(_storage.read('city'));
    fetchExploreHotelsList();
  }

  Future<void> fetchNearbyHotels(String city) async {
    isLoadingNearby.value = true;
    var result = await hotelRepo.fetchNearHotels(city);
    result.fold(
      (failure) {
        nearbyErrorMessage.value = failure.errorMessage;
      },
      (list) {
        final favHotelNames = watchlistController.watchList
            .map((e) => e.name)
            .toSet();

        for (var hotel in list) {
          hotel.isFav = favHotelNames.contains(hotel.name);
        }

        nearHotels.assignAll(list);
      },
    );
    isLoadingNearby.value = false;
  }

  Future<void> fetchExploreHotelsList() async {
    isLoadingExplore.value = true;
    var result = await hotelRepo.exploreHotels();
    result.fold(
      (failure) {
        exploreErrorMessage.value = failure.errorMessage;
      },
      (list) {
        final favHotelNames = watchlistController.watchList
            .map((e) => e.name)
            .toSet();

        for (var hotel in list) {
          hotel.isFav = favHotelNames.contains(hotel.name);
        }

        exploreHotels.assignAll(list);
      },
    );
    isLoadingExplore.value = false;
  }
}
