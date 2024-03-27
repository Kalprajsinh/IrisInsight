import 'dart:async';
import 'Start.dart';
import 'main.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 8),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MyHomePage(title: 'IrisInsight')),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEDEE),
      body: Center(
        child: SizedBox(
          width: 400,
          child: Image.asset('assets/images/flash.gif'),
        ),
      ),
    );
  }
}


// Positioned.fill(
// child: Image.asset(
// 'assets/images/bg.jpg',
// fit: BoxFit.cover,
// ),
// ),