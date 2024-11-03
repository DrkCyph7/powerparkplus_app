import 'dart:async'; // Imports the 'dart:async' library to use the Timer class
import 'package:flutter/material.dart'; // Imports the Flutter material design library
import 'onboarding_screen.dart'; // Import the OnboardingScreen

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Start the timer for 2 seconds
    Timer(const Duration(seconds: 2), () {
      // After 2 seconds, navigate to the OnboardingScreen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Add your logo image here
            Image.asset('assets/images/logo.png', width: 200, height: 200),
            const SizedBox(height: 20),
            const Text(
              '',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
