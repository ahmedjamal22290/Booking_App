import 'package:booking_app/core/data/models/hotel_model.dart';
import 'package:booking_app/core/errors/failures.dart';
import 'package:booking_app/core/utils/api_service.dart';
import 'package:booking_app/features/search/data/repos/search_section_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchSectionRepoImpl implements SearchSectionRepo {
  @override
  Future<Either<ServerFailure, List<HotelModel>>> searchByCity(
      String city) async {
    try {
      ApiService apiService = ApiService(dio: Dio());
      Map<String, dynamic> response = await apiService.get(city: city);
      List<HotelModel> hotels = [];
      for (var element in response['properties']) {
        hotels.add(HotelModel.fromJson(element));
      }
      return Right(hotels);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } on Exception catch (ex) {
      return left(ServerFailure(ex.toString()));
    }
  }
}
