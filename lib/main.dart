import 'dart:async';

import 'package:flutter/material.dart';

import 'Screens/OnboardingScreen/onboarding.dart';
import 'Styles/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );

  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const DashboardScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: Color(0xff0BCE83),
      body: Center(
        child: Image(
          image:  AssetImage("assets/images/bodytext.png"),
        ),
      ),

    );
  }
}



