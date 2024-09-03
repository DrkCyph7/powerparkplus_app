import 'package:flutter/material.dart';
import 'qr_scanner_page.dart'; // Import the QR Scanner Page

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => QRScannerPage()),
            );
          },
          child: Text('Scan Now'),
        ),
      ),
    );
  }
}
