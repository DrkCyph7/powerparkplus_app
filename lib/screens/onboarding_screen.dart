import 'package:flutter/material.dart';
import 'login_screen.dart'; // Ensure this path is correct

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  void _nextPage() {
    if (_currentPage < 1) {
      // Adjusted for two pages
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    }
  }

  void _previousPage() {
    if (_currentPage > 0) {
      _pageController.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView(
            controller: _pageController,
            onPageChanged: (page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: <Widget>[
              _buildPage(
                'assets/images/slide3.png',
                'Barrior based parking systems installed for further refined, best quality experience.',
              ),
              _buildPage(
                'assets/images/slide4.png',
                'Find nearby EV chargers with ease.',
              ),
            ],
          ),
          Positioned(
            bottom: 20.0,
            left: 20.0,
            child: _currentPage > 0
                ? ElevatedButton(
                    onPressed: _previousPage,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[800], // Background color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                    child: Text(
                      'Previous',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white, // Text color
                      ),
                    ),
                  )
                : SizedBox.shrink(),
          ),
          Positioned(
            bottom: 20.0,
            right: 20.0,
            child: ElevatedButton(
              onPressed: _nextPage,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[700], // Background color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              child: Text(
                _currentPage == 1 ? 'Get Started' : 'Next',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white, // Text color
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPage(String imagePath, String text) {
    return Stack(
      children: [
        Center(
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
        ),
        Positioned(
          top: 40.0,
          left: 20.0,
          right: 20.0,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontFamily: 'ModernFont', // Use a modern font
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
