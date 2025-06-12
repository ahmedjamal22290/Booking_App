import 'package:booking_app/core/data/models/hotel_model.dart';
import 'package:dartz/dartz.dart';

abstract class HotelRepo {
  Future<Either<,List<HotelModel>>> fetchNearHotels();
}
