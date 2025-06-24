import 'package:flutter/material.dart';

class ViewAllButton extends StatelessWidget {
  const ViewAllButton({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Text(
        'View All',
        style: TextStyle(
          color: Color(0xff2C67FF),
          fontFamily: 'sf_pro',
          fontWeight: FontWeight.w400,
          fontSize: 13.2,
        ),
      ),
    );
  }
}
