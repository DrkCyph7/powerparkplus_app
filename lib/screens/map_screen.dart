import 'package:flutter/material.dart';
import 'bottom_navbar.dart';
import 'home_screen.dart';
import 'charge_screen.dart';
import 'profile_screen.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  int _currentIndex = 1; // Set current index to 1 for Map

  void _onItemTapped(int index) {
    switch (index) {
      case 0: // Home
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
        break;
      case 1: // Map
        // Do nothing as we are already on Map screen
        break;
      case 2: // Charge
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const ChargeScreen()),
        );
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
        title: const Text('Map'),
        backgroundColor: Colors.black,
      ),
      body: const Center(
        child: Text(
          'Map Page',
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
