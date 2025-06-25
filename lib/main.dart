import 'package:booking_app/core/utils/app_routs.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im94dm9meWNsbmFteG9rcndzd2tuIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTAzMzgxNzcsImV4cCI6MjA2NTkxNDE3N30.YJVceLQgpmupCwyoVwjgbUu-6OCUHM0y6ieAjKUxRKs",
    url: "https://oxvofyclnamxokrwswkn.supabase.co",
  );

  runApp(const BookingApp());
}

class BookingApp extends StatelessWidget {
  const BookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        // brightness: Brightness.dark,
      ),
      initialRoute: '/',
      getPages: AppRouts.routs,
    );
  }
}
