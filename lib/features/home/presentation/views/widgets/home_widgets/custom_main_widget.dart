import 'package:flutter/material.dart';

class CustomMainContainer extends StatelessWidget {
  const CustomMainContainer({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: (404.57 / 594.99).toDouble() * MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(18.66), topRight: Radius.circular(18.66)),
      ),
      child: Column(
        children: [
          SizedBox(
              height: (160.26 / 594.99).toDouble() *
                  MediaQuery.sizeOf(context).height,
              width: (106.52 / 274.46).toDouble() *
                  MediaQuery.sizeOf(context).width,
              child: child),
        ],
      ),
    );
  }
}
