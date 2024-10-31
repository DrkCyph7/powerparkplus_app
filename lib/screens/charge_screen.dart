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
      backgroundColor: Colors.white, // Set screen background to white
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 60),
            // Title
            Text(
              'Charging State',
              style: TextStyle(
                fontSize: 30, // Increased size for better visibility
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(0.85), // More visible color
              ),
            ),
            const SizedBox(height: 40),
            // Rotating charging icon with outline
            Stack(
              alignment: Alignment.center,
              children: [
                // Rotating outline
                TweenAnimationBuilder(
                  tween: Tween<double>(begin: 0, end: 1),
                  duration: const Duration(seconds: 5),
                  builder: (context, double value, child) {
                    return Transform.rotate(
                      angle: value * 6.28,
                      child: Container(
                        width: 150, // Increased size for larger outer circle
                        height: 150, // Increased size for larger outer circle
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.green, // Changed to green
                            width: 4,
                          ),
                          gradient: LinearGradient(
                            colors: [
                              Colors.greenAccent, // Changed to green
                              Colors.green.withOpacity(0.3),
                            ],
                            stops: [0.2, 1.0],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.green.withOpacity(0.4),
                              blurRadius: 15,
                              spreadRadius: 5,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                // Inner pearl-white circle with charge icon
                Container(
                  width: 120, // Increased size for larger inner circle
                  height: 120, // Increased size for larger inner circle
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.9),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons
                        .bolt, // Replace with the charge icon used in the navbar
                    color: Colors.green, // Changed to green
                    size: 60, // Increased size for better visibility
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            // Information boxes for Power, Energy, and Payable
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _InfoBox(label: 'Power', value: '1200 W'),
                _InfoBox(label: 'Energy', value: '3.5 kWh'),
              ],
            ),
            const SizedBox(height: 30),
            _InfoBox(label: 'Total Payable', value: 'LKR 200.00'),
            const Spacer(),
            // Stop button
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Stop',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Set text color to white
                ), // Increased size for better visibility
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

// Info box widget
class _InfoBox extends StatelessWidget {
  final String label;
  final String value;

  const _InfoBox({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.grey, // Increased size for better visibility
          ),
        ),
        const SizedBox(height: 5),
        Text(
          value,
          style: const TextStyle(
            fontSize: 24, // Increased size for better visibility
            fontWeight: FontWeight.bold,
            color: Colors.black, // More visible color
          ),
        ),
      ],
    );
  }
}
