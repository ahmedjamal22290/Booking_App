import 'package:booking_app/core/utils/styles.dart';
import 'package:booking_app/features/start/presentation/views/widgets/custom_animated_image.dart';
import 'package:flutter/material.dart';

class SecondView extends StatefulWidget {
  const SecondView({super.key});

  @override
  State<SecondView> createState() => _SecondViewState();
}

class _SecondViewState extends State<SecondView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> animationPos1;
  late Animation<Offset> animationPos2;
  late Animation<Offset> animationPos3;
  late Animation<double> opcityAnimation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    animationPos1 = Tween<Offset>(
      end: const Offset(0.18655, 0.6422), //top    // right
      begin: const Offset(0.02655, 0.9422),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    animationPos2 = Tween<Offset>(
      end: const Offset(0.0860, 0.41496), //top    // right
      begin: const Offset(0.0010, 0.61496),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    animationPos3 = Tween<Offset>(
      begin: const Offset(0.04085, -0.19327), //top    // right
      end: const Offset(0.14085, 0.09327),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    opcityAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, _) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 0.59116 * MediaQuery.of(context).size.height,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  CustomAnimatedImage(
                    image: 'assets/images/start_images/Group 10.png',
                    animationPos1: animationPos1,
                    opcityAnimation: opcityAnimation,
                  ),
                  CustomAnimatedImage(
                    image: 'assets/images/start_images/Mask group(5).png',
                    animationPos1: animationPos2,
                    opcityAnimation: opcityAnimation,
                  ),
                  CustomAnimatedImage(
                    image: 'assets/images/start_images/Mask group(6).png',
                    animationPos1: animationPos3,
                    opcityAnimation: opcityAnimation,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 0.10204 * MediaQuery.of(context).size.height,
                    ),
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
            const SizedBox(height: 52.03),
            Padding(
              padding: EdgeInsets.only(
                left: 0.09790 * MediaQuery.of(context).size.width,
                right: 0.09870 * MediaQuery.of(context).size.width,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Relax. Unwind. Feel at home, wherever you go.',
                    style: Styles.headlines1.copyWith(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8.8),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Text(
                      'Enjoy a warm, welcoming stay that feels just like home — with a touch of hotel luxury.',
                      style: Styles.description1,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
