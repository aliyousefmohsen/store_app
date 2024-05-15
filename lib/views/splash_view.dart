import 'package:flutter/material.dart';
import 'package:test_ali/views/onboardin_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  void NavigateToOnBoardingScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context) {
        return const OnBoarding();
      }), (route) => false);
    });
  }

  @override
  void initState() {
    NavigateToOnBoardingScreen();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff53B175),
      body: Center(
        child: Image.asset('assets/images/onboarding/logo.png'),
      ),
    );
  }
}
