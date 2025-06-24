import 'package:booking_app/core/utils/constants.dart';
import 'package:flutter/material.dart';

class NameTextField extends StatelessWidget {
  const NameTextField({
    super.key,
    required this.text,
    required this.textEditingController,
  });
  final String text;
  final TextEditingController textEditingController;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width / 2.2,
      child: TextFormField(
        controller: textEditingController,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: text,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Constants.buttonsMainColor),
          ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Please enter your ${text.toLowerCase()}";
          }

          return null;
        },
      ),
    );
  }
}
