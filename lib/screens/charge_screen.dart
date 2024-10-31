import 'package:flutter/material.dart';
import 'bottom_navbar.dart';
import 'home_screen.dart';
import 'map_screen.dart';
import 'profile_screen.dart';

class ChargeScreen extends StatefulWidget {
  const ChargeScreen({Key? key}) : super(key: key);

  @override
  _ChargeScreenState createState() => _ChargeScreenState();
}

class _ChargeScreenState extends State<ChargeScreen> {
  int _currentIndex = 2; // Set current index to 2 for Charge

  void _onItemTapped(int index) {
    switch (index) {
      case 0: // Home
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
        break;
      case 1: // Map
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const MapScreen()),
        );
        break;
      case 2: // Charge
        // Do nothing as we are already on Charge screen
        break;
      case 3: // Profile
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const ProfileScreen()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Charge'),
        backgroundColor: Colors.black,
      ),
      body: const Center(
        child: Text(
          'Charge Page',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
