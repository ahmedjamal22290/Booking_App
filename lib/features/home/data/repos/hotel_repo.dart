import 'package:booking_app/core/data/models/hotel_model.dart';
import 'package:booking_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HotelRepo {
  Future<Either<Failures, List<HotelModel>>> fetchNearHotels(String city);
  Future<Either<Failures, List<HotelModel>>> exploreHotels();
}
