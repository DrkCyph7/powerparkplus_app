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

  Future<bool> _onWillPop() async {
    // Navigate to HomeScreen instead of popping
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()),
    );
    return false; // Prevent the default back navigation behavior
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop, // Use WillPopScope to intercept back button
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Text('Profile'), // Title on the AppBar
          backgroundColor: Colors.transparent, // Make the AppBar transparent
          elevation: 0, // Remove shadow
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 70), // Space for AppBar height

              // Circular Avatar
              Center(
                child: CircleAvatar(
                  radius: 50, // Radius for the circle
                  backgroundColor:
                      Colors.grey[700], // Background color for the circle
                  child: const Icon(
                    Icons.person,
                    size: 60, // Icon size for the avatar
                    color: Colors.white, // Icon color
                  ),
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
                    Icon(Icons.person,
                        color: Colors.green[700]), // Icon for name
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
                    Icon(Icons.email,
                        color: Colors.green[700]), // Icon for email
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
              SizedBox(
                width: double.infinity, // Makes button full width
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Add edit profile functionality here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.green[700], // Customize button color
                    padding: const EdgeInsets.symmetric(vertical: 15),
                  ),
                  icon:
                      const Icon(Icons.edit, color: Colors.white), // Edit icon
                  label: const Text(
                    'Edit Profile',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 20), // Space between buttons

              // Logout Button
              SizedBox(
                width: double.infinity, // Makes button full width
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.red, // Customize button color for logout
                    padding: const EdgeInsets.symmetric(vertical: 15),
                  ),
                  icon: const Icon(Icons.logout,
                      color: Colors.white), // Logout icon
                  label: const Text(
                    'Logout',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
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
      ),
    );
  }
}
