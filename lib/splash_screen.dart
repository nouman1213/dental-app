import 'dart:async';
import 'package:dental/views/main_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      // Navigates to the home screen after 3 seconds.
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => MainScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).colorScheme.secondary,
      body: Container(
        decoration: BoxDecoration(
          // Set the background color of the splash screen.
          color: Colors.white,
        ),
        child: Center(
          child: Image.asset("assets/images/ic_launcher.png"),
        ),
      ),
    );
  }
}
