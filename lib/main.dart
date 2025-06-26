import 'package:booking_app/core/utils/app_routs.dart';
import 'package:booking_app/features/profile/controllers/theme_conroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im94dm9meWNsbmFteG9rcndzd2tuIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTAzMzgxNzcsImV4cCI6MjA2NTkxNDE3N30.YJVceLQgpmupCwyoVwjgbUu-6OCUHM0y6ieAjKUxRKs",
    url: "https://oxvofyclnamxokrwswkn.supabase.co",
  );
  await GetStorage.init();
  Get.put(ThemeController());
  runApp(const BookingApp());
}

class BookingApp extends StatelessWidget {
  const BookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<ThemeController>(
      builder: (themeContller) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: themeContller.isDark.value
                ? null
                : Colors.white,
            brightness: themeContller.isDark.value
                ? Brightness.dark
                : Brightness.light,
          ),
          initialRoute: '/',
          getPages: AppRouts.routs,
        );
      },
    );
  }
}
