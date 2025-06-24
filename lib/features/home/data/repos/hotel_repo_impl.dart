import 'package:booking_app/core/data/models/hotel_model.dart';
import 'package:booking_app/core/errors/failures.dart';
import 'package:booking_app/core/utils/api_service.dart';
import 'package:booking_app/features/home/data/repos/hotel_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HotelRepoImpl extends HotelRepo {
  final ApiService apiService;

  HotelRepoImpl({required this.apiService});
  @override
  Future<Either<Failures, List<HotelModel>>> fetchNearHotels(
      String city) async {
    try {
      Map<String, dynamic> jsonData = await apiService.get(city: city);
      List<HotelModel> hotels = [];
      for (var element in jsonData['properties']) {
        hotels.add(HotelModel.fromJson(element));
      }
      return Right(hotels);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } on Exception catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<HotelModel>>> exploreHotels() async {
    try {
      Map<String, dynamic> jsonData = await apiService.get(city: 'europe');
      List<HotelModel> hotels = [];
      for (var element in jsonData['properties']) {
        hotels.add(HotelModel.fromJson(element));
      }
      return Right(hotels);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } on Exception catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
