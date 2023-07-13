import 'package:flutter/material.dart';
import 'Signup_Screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void switchToSignupPage() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SignupPage(),
        ));
  }

  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), switchToSignupPage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Image.asset(
        'assets/logo.png',
        height: 130,
        width: 130,
      )),
    );
  }
}
