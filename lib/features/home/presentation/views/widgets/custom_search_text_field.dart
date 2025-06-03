import 'dart:developer';

import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62.6,
      margin: const EdgeInsets.only(top: 47),
      child: TextFormField(
        onTap: () {
          log('when the UI will change ');
        },
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: 'Look for homestay',
          hintStyle: const TextStyle(
            color: Color(0xffA3A3A3),
            fontSize: 15.26,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
          ),
        ),
      ),
    );
  }
}
