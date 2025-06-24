import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;
  final String _baseUrl = "https://serpapi.com/search?engine=google_hotels";
  final String _apiKey =
      "&api_key=af7172422ad08979b667e7ae516c748445889cf45cdf2e941e0b4e9f19a11405";
  ApiService({required this.dio});
  Future<Map<String, dynamic>> get(
      {required String city, String? checkIn, String? checkOut}) async {
    if (checkIn == null) {
      checkIn =
          "${DateTime.now().year}-${DateTime.now().month.toString().padLeft(2, '0')}-${DateTime.now().day.toString().padLeft(2, '0')}";
      DateTime dateAfterWeek = DateTime.now().add(const Duration(days: 7));
      checkOut =
          "${dateAfterWeek.year}-${dateAfterWeek.month.toString().padLeft(2, '0')}-${dateAfterWeek.day.toString().padLeft(2, '0')}";
    }
    String requestUrl = "$_baseUrl$_apiKey"
        "&q=$city&check_in_date=$checkIn&check_out_date=$checkOut";
    Response response = await dio.get(requestUrl);
    Map<String, dynamic> json = response.data;
    return json;
  }
}
