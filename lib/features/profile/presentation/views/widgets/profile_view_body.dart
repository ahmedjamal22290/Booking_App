import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //logout icon in the right of screen
        Row(
          children: [
            //change theme option
            ThemeModeAnimation(),
            Spacer(),
            SizedBox(
              height: 80,
              child: Lottie.asset(
                'assets/lottie/logout_animation.json',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        //animated profile icon in the center
        Container(
          alignment: Alignment.topCenter,
          height: 350,
          child: Lottie.asset(
            'assets/lottie/profile_animation.json',

            fit: BoxFit.cover,
          ),
        ),
        //Name of user and his email
        Text('userName', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 5),
        Text('userEmail', style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}

class ThemeModeAnimation extends StatefulWidget {
  const ThemeModeAnimation({super.key});

  @override
  State<ThemeModeAnimation> createState() => _ThemeModeAnimationState();
}

class _ThemeModeAnimationState extends State<ThemeModeAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  LottieComposition? _composition;
  double _startFrame = 0;
  double _endFrame = 290;
  bool isDark = false;
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
    setState(() {
      _composition = compostion;
      _controller.duration = Duration(seconds: 4);
    });
  }

  void _onTap() async {
    if (_composition == null) return;

    double totalFrames = _composition!.endFrame - _composition!.startFrame;
    double start = _startFrame / totalFrames;
    double end = _endFrame / totalFrames;
    if (!isDark) {
      await _controller.animateTo(end);
    } else {
      await _controller.animateBack(start, curve: Curves.easeOutCubic);
    }
    setState(() {
      isDark = !isDark;
    });
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
