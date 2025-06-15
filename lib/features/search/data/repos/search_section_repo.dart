import 'package:booking_app/core/data/models/hotel_model.dart';
import 'package:booking_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class SearchSectionRepo {
  Future<Either<ServerFailure, List<HotelModel>>> searchByCity(String city);
}
