import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ThemeConroller extends GetxController {
  var isDark = false.obs;
  void toggleTheme() {
    isDark.value = !isDark.value;
  }
}
