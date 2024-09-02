import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/onboarding_screen.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';
import 'screens/feed_screen.dart';
import 'screens/product_card_screen.dart';
import 'screens/checkout_screen.dart';
import 'screens/statistics_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/onboarding': (context) => OnboardingScreen(),
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        '/feed': (context) => FeedScreen(),
        '/product': (context) => ProductCardScreen(),
        '/checkout': (context) => CheckoutScreen(),
        '/statistics': (context) => StatisticsScreen(),
      },
    );
  }
}
