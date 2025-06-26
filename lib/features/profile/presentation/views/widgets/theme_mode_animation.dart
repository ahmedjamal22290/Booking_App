import "package:booking_app/features/profile/controllers/theme_conroller.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:lottie/lottie.dart";

class ThemeModeAnimation extends StatefulWidget {
  const ThemeModeAnimation({super.key});

  @override
  State<ThemeModeAnimation> createState() => _ThemeModeAnimationState();
}

class _ThemeModeAnimationState extends State<ThemeModeAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  LottieComposition? _composition;
  final double _startFrame = 0;
  final double _endFrame = 270;
  final ThemeController themeConroller = Get.find<ThemeController>();
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    _loadLottie();
  }

  void _loadLottie() async {
    final compostion = await LottieComposition.fromByteData(
      await DefaultAssetBundle.of(
        context,
      ).load('assets/lottie/change_mode_animation.json'),
    );
    final totalFrames = compostion.endFrame - compostion.startFrame;

    final double start = _startFrame / totalFrames;
    final double end = _endFrame / totalFrames;
    setState(() {
      _composition = compostion;
      _controller.duration = Duration(seconds: 4);
      _controller.value = themeConroller.isDark.value ? end : start;
    });
  }

  void _onTap() async {
    if (_composition == null) return;

    double totalFrames = _composition!.endFrame - _composition!.startFrame;
    double start = _startFrame / totalFrames;
    double end = _endFrame / totalFrames;
    if (!themeConroller.isDark.value) {
      await _controller.animateTo(end);
    } else {
      await _controller.animateBack(start, curve: Curves.easeOutCubic);
    }
    themeConroller.toggleTheme();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Container(
        height: 50,
        alignment: Alignment.topLeft,
        child: Lottie(composition: _composition, controller: _controller),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
