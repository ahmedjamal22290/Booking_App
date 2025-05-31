import 'package:booking_app/features/start/presentation/views/widgets/start_view_body.dart';
import 'package:flutter/material.dart';

class StartView extends StatelessWidget {
  const StartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: StartViewBody(),
      ),
    );
  }
}
