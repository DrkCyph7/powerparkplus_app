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

            // Profile Details
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(2, 2),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Icon(Icons.person, color: Colors.green[700]), // Icon for name
                  const SizedBox(width: 10),
                  const Text(
                    'RexZeal',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.only(bottom: 15),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(2, 2),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Icon(Icons.email, color: Colors.green[700]), // Icon for email
                  const SizedBox(width: 10),
                  const Text(
                    'rexzeal@powerpark.com',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.only(bottom: 20),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(2, 2),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Icon(Icons.directions_car,
                      color: Colors.green[700]), // Icon for vehicle number
                  const SizedBox(width: 10),
                  const Text(
                    'Vehicle Number: ABC1234',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            // Edit Profile Button
            ElevatedButton.icon(
              onPressed: () {
                // Add edit profile functionality here
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[700], // Customize button color
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              icon: const Icon(Icons.edit, color: Colors.white), // Edit icon
              label: const Text(
                'Edit Profile',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            const Spacer(),

            // Logout Button
            ElevatedButton.icon(
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
              icon:
                  const Icon(Icons.logout, color: Colors.white), // Logout icon
              label: const Text(
                'Logout',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            const SizedBox(height: 20),

            // Terms and Conditions Link
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.article,
                    color: Colors.green), // Suitable icon for terms
                TextButton(
                  onPressed: () {
                    // Add functionality to show terms and conditions
                  },
                  child: const Text(
                    'Terms and Conditions',
                    style: TextStyle(
                      color: Colors.green, // Text color for the link
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
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
