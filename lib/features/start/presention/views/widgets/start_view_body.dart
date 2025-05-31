import 'package:booking_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class StartViewBody extends StatelessWidget {
  const StartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(physics: const BouncingScrollPhysics(), children: const [
      FirstView(),
      SecondView(),
      ThiredView(),
    ]);
  }
}

class FirstView extends StatelessWidget {
  const FirstView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 0.59116 * MediaQuery.of(context).size.height,
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
        const SizedBox(height: 52.03),
        Padding(
            padding: EdgeInsets.only(
                left: 0.09790 * MediaQuery.of(context).size.width,
                right: 0.09870 * MediaQuery.of(context).size.width),
            child: const Column(
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
}

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
        vsync: this, duration: const Duration(milliseconds: 500));
    animationPos1 = Tween<Offset>(
            end: const Offset(0.18655, 0.6422), //top    // right
            begin: const Offset(0.02655, 0.9422))
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    animationPos2 = Tween<Offset>(
            end: const Offset(0.0860, 0.41496), //top    // right
            begin: const Offset(0.0010, 0.61496))
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    animationPos3 = Tween<Offset>(
            begin: const Offset(0.04085, -0.19327), //top    // right
            end: const Offset(0.14085, 0.09327))
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    opcityAnimation = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

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
                          top: 0.10204 * MediaQuery.of(context).size.height),
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
                      right: 0.09870 * MediaQuery.of(context).size.width),
                  child: const Column(
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
        });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

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
        vsync: this, duration: const Duration(milliseconds: 500));
    animationPos1 = Tween<Offset>(
            end: const Offset(0.34247, 0.54084), //top    // right
            begin: const Offset(0.42247, 0.34084))
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    animationPos2 = Tween<Offset>(
            end: const Offset(0.40377, 0.21565), //top    // right
            begin: const Offset(0.50377, 0.01565))
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    animationPos3 = Tween<Offset>(
            begin: const Offset(0.50217, -0.222368), //top    // right
            end: const Offset(0.30217, 0.002368))
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    opcityAnimation = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

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
                          top: 0.10204 * MediaQuery.of(context).size.height),
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
                      right: 0.09870 * MediaQuery.of(context).size.width),
                  child: const Column(
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
        });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class CustomAnimatedImage extends StatelessWidget {
  const CustomAnimatedImage({
    super.key,
    required this.animationPos1,
    required this.opcityAnimation,
    required this.image,
  });

  final Animation<Offset> animationPos1;
  final Animation<double> opcityAnimation;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: animationPos1.value.dx * MediaQuery.of(context).size.height,
      right: animationPos1.value.dy * MediaQuery.of(context).size.width,
      child: SizedBox(
        height: 0.20000 * MediaQuery.of(context).size.height,
        width: 0.3577 * MediaQuery.of(context).size.width,
        child: Image.asset(
          image,
          height: 69.1,
          width: 69.1,
          opacity: opcityAnimation,
        ),
      ),
    );
  }
}
