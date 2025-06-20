import 'package:booking_app/core/data/models/hotel_model.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class WatchlistController extends GetxController {
  var watchList = <HotelModel>[].obs;

  final supabase = Supabase.instance.client;
  Future<void> addToWatchList(HotelModel hotel) async {
    final user = supabase.auth.currentSession;
    if (user == null) {
      throw Exception('User not logged in');
    }

    final data = hotel.toJson(user.user.id);
    final response = await supabase.from('watchlist').insert(data);
    if (response.error != null) {
      throw Exception('Failed to add to watchlist: ${response.error!.message}');
    }
  }

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
