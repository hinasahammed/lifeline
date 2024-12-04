import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lifeline/gen/assets.gen.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.images.lifelineLogo.image(),
            const Gap(40),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
