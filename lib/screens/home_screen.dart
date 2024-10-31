import 'package:flutter/material.dart';
import 'dart:async';
import 'qr_scanner_page.dart'; // Import the QR Scanner Page
import 'map_screen.dart'; // Import the MapScreen
import 'charge_screen.dart'; // Import the ChargeScreen
import 'profile_screen.dart'; // Import the ProfileScreen

class DotsDecorator {
  final Color color;
  final Color activeColor;
  final Size size;
  final Size activeSize;
  final EdgeInsetsGeometry spacing;

  DotsDecorator({
    required this.color,
    required this.activeColor,
    required this.size,
    required this.activeSize,
    required this.spacing,
  });
}

class DotsIndicator extends StatelessWidget {
  final int dotsCount;
  final int position;
  final DotsDecorator decorator;

  const DotsIndicator({
    super.key,
    required this.dotsCount,
    required this.position,
    required this.decorator,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        dotsCount,
        (index) => Container(
          margin: decorator.spacing,
          width: index == position
              ? decorator.activeSize.width
              : decorator.size.width,
          height: index == position
              ? decorator.activeSize.height
              : decorator.size.height,
          decoration: BoxDecoration(
            color: index == position ? decorator.activeColor : decorator.color,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  late Timer _timer;

  // Track the current index for the bottom navigation bar
  int _currentIndex = 0;

  // Automatic greeting variable
  String _greeting = '';
  IconData _greetingIcon = Icons.wb_sunny; // Default icon

  @override
  void initState() {
    super.initState();
    _startAutoSlide();
    _setGreeting(); // Set the greeting based on the current time
  }

  void _startAutoSlide() {
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 3) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  void _setGreeting() {
    final hour = DateTime.now().hour;
    if (hour < 12) {
      _greeting = 'Good Morning';
      _greetingIcon = Icons.wb_sunny; // Morning icon
    } else if (hour < 18) {
      _greeting = 'Good Afternoon';
      _greetingIcon = Icons.wb_sunny; // Afternoon icon
    } else {
      _greeting = 'Good Evening';
      _greetingIcon = Icons.nights_stay; // Evening icon
    }
    setState(() {}); // Trigger a rebuild to update the icon
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex =
          index; // Update the current index for the bottom navigation bar
    });

    // Navigate to the respective screen based on the selected index
    switch (index) {
      case 0: // Home
        // Do nothing as we are already on Home
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            Row(
              children: [
                Image.asset(
                  'assets/icons/app_icon.png', // Replace with your app logo path
                  height: 50,
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello, RexZeal',
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          _greetingIcon,
                          color: _greetingIcon == Icons.wb_sunny
                              ? Colors.yellow
                              : Colors.blueGrey,
                          size: 20,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          _greeting,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.5,
              child: Stack(
                children: [
                  PageView(
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: [
                      _buildImageContainer('assets/slider_images/slider1.png'),
                      _buildImageContainer('assets/slider_images/slider2.png'),
                      _buildImageContainer('assets/slider_images/slider3.png'),
                      _buildImageContainer('assets/slider_images/slider4.png'),
                    ],
                  ),
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: DotsIndicator(
                        dotsCount: 4,
                        position: _currentPage,
                        decorator: DotsDecorator(
                          color: Colors.grey,
                          activeColor: Colors.blue,
                          size: const Size(8, 8),
                          activeSize: const Size(12, 8),
                          spacing: const EdgeInsets.symmetric(horizontal: 4),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QRScannerPage()),
                );
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.green[700],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Charge your EV',
                      style: TextStyle(fontSize: 23, color: Colors.white),
                    ),
                    Image.asset(
                      'assets/icons/scan_icon.png', // Replace with your icon path
                      height: 54,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 35),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map, size: 35),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bolt, size: 35),
            label: 'Charge',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 35),
            label: 'Profile',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  Widget _buildImageContainer(String assetPath) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          assetPath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
