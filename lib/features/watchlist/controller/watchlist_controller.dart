import 'package:booking_app/core/data/models/hotel_model.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class WatchlistController extends GetxController {
  var watchList = <HotelModel>[].obs;
  @override
  void onInit() {
    super.onInit();
    getUserWatchlist();
  }

  final supabase = Supabase.instance.client;
  Future<void> addToWatchList(HotelModel hotel) async {
    final user = supabase.auth.currentSession;
    if (user == null) {
      throw Exception('User not logged in');
    }

    final data = hotel.toJson(user.user.id);
    try {
      final response = await supabase.from('watchlist').insert(data);
    } on Exception catch (e) {
      throw Exception('Failed to fetch watchlist: $e');
    }
  }

  Future<void> getUserWatchlist() async {
    final user = supabase.auth.currentSession;
    if (user == null) {
      throw Exception('User not logged in');
    }
    try {
      final response =
          await supabase.from('watchlist').select().eq('user_id', user.user.id);
      List<HotelModel> hotels = [];
      for (var element in response) {
        hotels.add(HotelModel.fromSupabase(element));
      }

      watchList.assignAll(hotels);
    } on Exception catch (e) {
      throw Exception('Failed to fetch watchlist: $e');
    }
  }

  Future<void> deleteFromWatchList(HotelModel hotel) async {
    final user = supabase.auth.currentSession;
    if (user == null) {
      throw Exception('User not logged in');
    }
    try {
      final response = await supabase.from('watchlist').delete().match({
        'user_id': user.user.id,
        'name': hotel.name,
      });
    } on Exception catch (e) {
      throw Exception('Failed to fetch watchlist: $e');
    }
  }
}
