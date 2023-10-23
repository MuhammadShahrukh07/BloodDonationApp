import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bloodapp/auth/login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: Image.asset('assets/images/logo.png', height: 300, width: 300),
        nextScreen: const LoginScreen(),
        splashTransition: SplashTransition.scaleTransition,
        backgroundColor: const Color.fromRGBO(235, 55, 56, 1),
        duration: 2500,
      ),
    );
  }
}
