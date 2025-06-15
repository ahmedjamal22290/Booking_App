import 'package:booking_app/core/data/models/hotel_model.dart';
import 'package:get/get.dart';

class WatchlistController extends GetxController {
  var watchList = <HotelModel>[].obs;
  void add(HotelModel hotelModel) {
    watchList.add(hotelModel);
  }

  void delete(HotelModel hotelModel) {
    for (int i = 0; i < watchList.length; i++) {
      if (watchList[i] == hotelModel) {
        watchList.removeAt(i);
      }
    }
  }
}
