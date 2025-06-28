import 'package:booking_app/core/utils/constants.dart';
import 'package:booking_app/core/utils/styles.dart';
import 'package:booking_app/features/start/controller/start_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class StartAnimatedButton extends StatefulWidget {
  const StartAnimatedButton({super.key});
  @override
  State<StartAnimatedButton> createState() => _StartAnimatedButtonState();
}

class _StartAnimatedButtonState extends State<StartAnimatedButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> widthAnimation;
  late Animation<double> posAnimation;
  late Animation<double> textOp;
  late Animation<BorderRadius> borderAnimation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 350),
    );
    widthAnimation = Tween<double>(
      begin: 0.13608,
      end: 0.91608,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    posAnimation = Tween<double>(
      begin: 150,
      end: 0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    textOp = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    borderAnimation = Tween<BorderRadius>(
      begin: BorderRadius.circular(100),
      end: BorderRadius.circular(8.8),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<StartController>(
      builder: (controller) {
        if (controller.page != 2 && _controller.status.isCompleted) {
          _controller.reverse();
        } else if (controller.page == 2 && _controller.status.isDismissed) {
          _controller.forward();
        }
        return AnimatedBuilder(
          animation: _controller,
          builder: (context, _) {
            return Transform.translate(
              offset: Offset(
                posAnimation.value * (MediaQuery.sizeOf(context).width / 350),
                0,
              ),
              child: GestureDetector(
                onTap: () {
                  controller.nextPage();
                },
                child: Container(
                  width:
                      widthAnimation.value * MediaQuery.of(context).size.width,
                  height: 0.05484 * MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    borderRadius: borderAnimation.value,
                    color: Constants.buttonsMainColor,
                  ),
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      const Positioned(
                        left: 12,
                        child: Icon(
                          Icons.arrow_forward_rounded,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      Text(
                        "Let's Go",
                        style: Styles.buttonText1.copyWith(
                          color: Colors.white.withAlpha(
                            (textOp.value * 255).toInt(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
