import 'package:booking_app/core/utils/constants.dart';
import 'package:booking_app/core/utils/styles.dart';
import 'package:booking_app/features/auth/presentation/views/widgets/email_textfield.dart';
import 'package:booking_app/features/auth/presentation/views/widgets/password_textfield.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.sizeOf(context).height * 0.23,
        right: 14,
        left: 14,
      ),
      child: Form(
        key: ,
        child: Column(
          children: [
            Center(
              child: Text(
                'Login now',
                style: Styles.headlines1.copyWith(
                  color: const Color(0xFF1C4BC3),
                ),
              ),
            ),
            const SizedBox(
              height: 120,
            ),
            EmailTextField(
              textEditingController: ,
            ),
            const SizedBox(
              height: 20,
            ),
            PasswordTextField(
              textEditingController: ,
            ),
          ],
        ),
      ),
    );
  }
}
