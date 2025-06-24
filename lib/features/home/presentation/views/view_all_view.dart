import 'package:booking_app/features/home/presentation/views/widgets/view_all_view_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ViewAllView extends StatelessWidget {
  const ViewAllView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ViewAllViewBody(
          list: Get.arguments,
        ),
      ),
    );
  }
}
