import 'package:booking_app/features/auth/presentation/views/widgets/custom_animated_background.dart';
import 'package:booking_app/features/auth/presentation/views/widgets/login_form_section.dart';

import 'package:flutter/material.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});
  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
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
              top: MediaQuery.sizeOf(context).height * 0.23,
              right: 14,
              left: 14,
            ),
            child: LoginFormSection(),
          ),
        ],
      ),
    );
  }
}
