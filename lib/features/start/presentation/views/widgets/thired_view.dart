import 'package:booking_app/core/utils/styles.dart';
import 'package:booking_app/features/start/presentation/views/widgets/custom_animated_image.dart';
import 'package:flutter/material.dart';

class ThiredView extends StatefulWidget {
  const ThiredView({super.key});

  @override
  State<ThiredView> createState() => _ThiredViewState();
}

class _ThiredViewState extends State<ThiredView>
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
      end: const Offset(0.34247, 0.54084), //top    // right
      begin: const Offset(0.42247, 0.34084),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    animationPos2 = Tween<Offset>(
      end: const Offset(0.40377, 0.21565), //top    // right
      begin: const Offset(0.50377, 0.01565),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    animationPos3 = Tween<Offset>(
      begin: const Offset(0.50217, -0.222368), //top    // right
      end: const Offset(0.30217, 0.002368),
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
                    image: 'assets/images/start_images/Mask group(7).png',
                    animationPos1: animationPos1,
                    opcityAnimation: opcityAnimation,
                  ),
                  CustomAnimatedImage(
                    image: 'assets/images/start_images/Mask group@4x.png',
                    animationPos1: animationPos2,
                    opcityAnimation: opcityAnimation,
                  ),
                  CustomAnimatedImage(
                    image: 'assets/images/start_images/Mask group@4x(1).png',
                    animationPos1: animationPos3,
                    opcityAnimation: opcityAnimation,
                  ),
                  Positioned(
                    top: 0.18655 * MediaQuery.of(context).size.height,
                    right: 0.6422 * MediaQuery.of(context).size.width,
                    child: SizedBox(
                      height: 0.20000 * MediaQuery.of(context).size.height,
                      width: 0.3577 * MediaQuery.of(context).size.width,
                      child: Image.asset(
                        'assets/images/start_images/Group 10.png',
                        height: 69.1,
                        width: 69.1,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0.0860 * MediaQuery.of(context).size.height,
                    right: 0.41496 * MediaQuery.of(context).size.width,
                    child: SizedBox(
                      height: 0.20000 * MediaQuery.of(context).size.height,
                      width: 0.3577 * MediaQuery.of(context).size.width,
                      child: Image.asset(
                        'assets/images/start_images/Mask group(5).png',
                        height: 69.1,
                        width: 69.1,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0.14085 * MediaQuery.of(context).size.height,
                    right: 0.09327 * MediaQuery.of(context).size.width,
                    child: SizedBox(
                      height: 0.20000 * MediaQuery.of(context).size.height,
                      width: 0.3577 * MediaQuery.of(context).size.width,
                      child: Image.asset(
                        'assets/images/start_images/Mask group(6).png',
                        height: 69.1,
                        width: 69.1,
                      ),
                    ),
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
                    'Let’s Find Your Sweet & Dream Place',
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
                      'Get the opportunity to stay that you dream of at an affordable price',
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
