import 'package:booking_app/core/data/models/hotel_model.dart';

import 'package:booking_app/features/home/data/repos/hotel_repo.dart';
import 'package:get/get.dart';

class HotelController extends GetxController {
  var nearHotels = <HotelModel>[].obs;
  var exploreHotels = <HotelModel>[].obs;
  var searchResult = <HotelModel>[].obs;

  final HotelRepo hotelRepo;

  var isLoadingNearby = false.obs;
  var isLoadingExplore = false.obs;
  var isLoadingSearch = false.obs;

  var nearbyErrorMessage = ''.obs;
  var exploreErrorMessage = ''.obs;
  var searchErrorMessage = ''.obs;

  HotelController({required this.hotelRepo});

  @override
  void onInit() {
    super.onInit();
    fetchNearbyHotels('cairo');
  }

  Future<void> fetchNearbyHotels(String city) async {
    isLoadingNearby.value = true;
    var result = await hotelRepo.fetchNearHotels(city);
    result.fold(
      (failure) {
        nearbyErrorMessage.value = failure.errorMessage;
      },
      (list) {
        nearHotels.assignAll(list);
      },
    );
    isLoadingNearby.value = false;
  }
}
