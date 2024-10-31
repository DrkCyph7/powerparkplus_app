import 'package:flutter/material.dart';
import 'login_screen.dart'; // Import your login screen
import 'bottom_navbar.dart'; // Import your bottom navigation bar
import 'home_screen.dart';
import 'charge_screen.dart';
import 'map_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _currentIndex = 3; // Set current index to 3 for Profile

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
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const ChargeScreen()),
        );
        break;
      case 3: // Profile
        // Do nothing as we are already on Profile screen
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Avatar
            Center(
              child: Icon(
                Icons.person,
                size: 100, // Icon size for the avatar
                color: Colors.grey[700], // Change color as needed
              ),
            ),
            const SizedBox(height: 20),
            // Name
            const Text(
              'Name: RexZeal',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            // Email
            const Text(
              'Email: rexzeal@powerpark.com',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            // Vehicle Number
            const Text(
              'Vehicle Number: ABC1234',
              style: TextStyle(fontSize: 20),
            ),
            const Spacer(),
            // Edit Profile Button
            ElevatedButton(
              onPressed: () {
                // Add edit profile functionality here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[700], // Customize button color
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              child: const Text(
                'Edit Profile',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            const SizedBox(height: 10),
            // Logout Button
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors.red, // Customize button color for logout
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              child: const Text(
                'Logout',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
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
