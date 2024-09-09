import 'package:flutter/material.dart';
import 'qr_scanner_page.dart'; // Import the QR Scanner Page

class HomeScreen extends StatelessWidget {
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
                  height: 40,
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
            SizedBox(height: 10),
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
              child: PageView(
                children: [
                  AspectRatio(
                    aspectRatio:
                        2.0, // 2:1 aspect ratio (width is 2 times height)
                    child: Image.asset('assets/slider1.png', fit: BoxFit.cover),
                  ),
                  AspectRatio(
                    aspectRatio: 2.0,
                    child: Image.asset('assets/slider2.png', fit: BoxFit.cover),
                  ),
                  AspectRatio(
                    aspectRatio: 2.0,
                    child: Image.asset('assets/slider3.png', fit: BoxFit.cover),
                  ),
                  AspectRatio(
                    aspectRatio: 2.0,
                    child: Image.asset('assets/slider4.png', fit: BoxFit.cover),
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
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Scan Now',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    Image.asset(
                      'assets/scan_icon.png', // Replace with your icon path
                      height: 24,
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
}
