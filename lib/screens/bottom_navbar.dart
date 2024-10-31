import 'package:flutter/material.dart';
import 'home_screen.dart'; // Import other screens as needed
import 'map_screen.dart';
import 'charge_screen.dart';
import 'profile_screen.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white, // Set background color to white
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Shadow color
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, -2), // Shadow above the bar
          ),
        ],
      ),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home, size: 35), // Increased icon size
            label: 'Home', // Added label
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.map, size: 35), // Increased icon size
            label: 'Map', // Added label
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.bolt, size: 35), // Increased icon size
            label: 'Charge', // Added label
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person, size: 35), // Increased icon size
            label: 'Profile', // Added label
          ),
        ],
        currentIndex: currentIndex,
        selectedItemColor: Colors.green, // Selected item color
        unselectedItemColor: Colors.grey, // Unselected item color
        backgroundColor: Colors.white, // Background color of the navbar
        onTap: onTap,
        type: BottomNavigationBarType.fixed, // Keep all items visible
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold, // Make selected label bold
        ),
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold, // Make unselected label bold
        ),
      ),
    );
  }
}
