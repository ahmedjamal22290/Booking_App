import 'package:booking_app/features/home/controllers/search_controller.dart';
import 'package:get/get.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(SearchingController());
  }
}
