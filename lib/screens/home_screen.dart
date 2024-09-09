import 'package:flutter/material.dart';
import 'dart:async';
import 'qr_scanner_page.dart'; // Import the QR Scanner Page

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startAutoSlide();
  }

  void _startAutoSlide() {
    _timer = Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 3) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: 40), // To add some space from the top of the screen
            Row(
              children: [
                Image.asset(
                  'assets/icons/app_icon.png', // Replace with your app logo path
                  height: 50,
                ),
                SizedBox(width: 8),
                Text(
                  'Hello, RexZeal',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              'Welcome to PowerPark Plus',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: MediaQuery.of(context).size.width *
                  0.5, // Set the height to 50% of the width
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
                          color: Colors.grey, // Inactive dot color
                          activeColor: Colors.blue, // Active dot color
                          size: Size(8, 8),
                          activeSize: Size(12, 8),
                          spacing: EdgeInsets.symmetric(horizontal: 4),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QRScannerPage()),
                );
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.green[700], // Green 700 color
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Charge your EV',
                      style: TextStyle(
                        fontSize: 23,
                        color: Colors.white,
                      ),
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
            offset: Offset(0, 3),
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

class DotsIndicator extends StatelessWidget {
  final int dotsCount;
  final int position;
  final DotsDecorator decorator;

  DotsIndicator({
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
