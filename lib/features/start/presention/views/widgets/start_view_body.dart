import 'package:booking_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class StartViewBody extends StatelessWidget {
  const StartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SecondView();
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
        const SizedBox(height: 82.03),
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
  late Animation<Offset> AnimationPos1;
  late Animation<Offset> AnimationPos2;
  late Animation<Offset> AnimationPos3;
  late Animation<double> opcityAnimation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 450));
    AnimationPos1 = Tween<Offset>(
            end: const Offset(0.18655, 0.6422), //top    // right
            begin: const Offset(0.02655, 0.9422))
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    AnimationPos2 = Tween<Offset>(
            end: const Offset(0.0860, 0.41496), //top    // right
            begin: const Offset(0.0010, 0.61496))
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    AnimationPos3 = Tween<Offset>(
            begin: const Offset(0.04085, -0.19327), //top    // right
            end: const Offset(0.14085, 0.09327))
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
                height: 0.48116 * MediaQuery.of(context).size.height,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Positioned(
                      top: AnimationPos1.value.dx *
                          MediaQuery.of(context).size.height,
                      right: AnimationPos1.value.dy *
                          MediaQuery.of(context).size.width,
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
                      top: AnimationPos2.value.dx *
                          MediaQuery.of(context).size.height,
                      right: AnimationPos2.value.dy *
                          MediaQuery.of(context).size.width,
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
                      top: AnimationPos3.value.dx *
                          MediaQuery.of(context).size.height,
                      right: AnimationPos3.value.dy *
                          MediaQuery.of(context).size.width,
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
              const SizedBox(height: 82.03),
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
