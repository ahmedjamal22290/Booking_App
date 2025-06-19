import 'package:booking_app/features/auth/presentation/views/widgets/custom_animated_background.dart';
import 'package:booking_app/features/auth/presentation/views/widgets/register_form_section.dart';
import 'package:flutter/material.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({
    super.key,
  });
  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
  bool animated = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        animated = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenH = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Stack(
        children: [
          CustomAnimatedBackground(animated: animated, screenH: screenH),
          Padding(
            padding: EdgeInsets.only(
              top: screenH * 0.23,
              right: 14,
              left: 14,
            ),
            child: RegisterFormSection(),
          ),
        ],
      ),
    );
  }
}
