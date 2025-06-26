import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController extends GetxController {
  final _storage = GetStorage();
  var isDark = false.obs;
  @override
  void onInit() {
    super.onInit();
    isDark.value = _storage.read('isDarkMode') ?? false;
  }

  void toggleTheme() {
    isDark.value = !isDark.value;
    _storage.write('isDarkMode', isDark.value);
  }
}
