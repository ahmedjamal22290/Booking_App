import 'package:booking_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class StartViewBody extends StatelessWidget {
  const StartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return FirstView();
  }
}

class FirstView extends StatefulWidget {
  const FirstView({super.key});

  @override
  State<FirstView> createState() => _FirstViewState();
}

class _FirstViewState extends State<FirstView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 0.48116 * MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: 0.20504 * MediaQuery.of(context).size.height),
                child: SizedBox(
                  height: 0.20000 * MediaQuery.of(context).size.height,
                  width: 0.3577 * MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/images/start_images/Group 9.png',
                    height: 69.1,
                    width: 69.1,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 31.03),
        Padding(
            padding: EdgeInsets.only(
                left: 0.09790 * MediaQuery.of(context).size.width,
                right: 0.09870 * MediaQuery.of(context).size.width),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Travel safely, comfortably & easily',
                  style: Styles.headlines,
                  textAlign: TextAlign.center,
                ),
              ],
            ))
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
