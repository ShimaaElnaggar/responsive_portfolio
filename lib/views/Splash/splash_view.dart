import 'dart:async';

import 'package:flutter/material.dart';
import 'package:responsive_portfolio/utils/colors_utility.dart';
import 'package:responsive_portfolio/views/Home/home_view.dart';
import 'package:responsive_portfolio/views/Splash/components/animated_loading_text.dart';
import 'package:responsive_portfolio/widgets/animated_image_container.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeView(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorsUtility.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedImageContainer(),
            SizedBox(
              height: 20,
            ),
            AnimatedLoadingText(),
          ],
        ),
      ),
    );
  }
}
