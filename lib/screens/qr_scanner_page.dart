import 'dart:io';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRScannerPage extends StatefulWidget {
  @override
  _QRScannerPageState createState() => _QRScannerPageState();
}

class _QRScannerPageState extends State<QRScannerPage> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  String? qrText;
  bool isFlashOn = false;

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Scanner'),
        actions: [
          IconButton(
            icon: Icon(isFlashOn ? Icons.flash_on : Icons.flash_off),
            onPressed: () {
              setState(() {
                isFlashOn = !isFlashOn;
              });
              controller?.toggleFlash();
            },
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          // Full-screen camera view
          QRView(
            key: qrKey,
            onQRViewCreated: _onQRViewCreated,
          ),
          // Fully transparent overlay with a visible cut-out in the center
          _buildOverlay(),
        ],
      ),
    );
  }

  Widget _buildOverlay() {
    return LayoutBuilder(
      builder: (context, constraints) {
        final size = constraints.biggest;
        final double overlayWidth = 250;
        final double overlayHeight = 250;

        return Stack(
          children: [
            // Fully transparent background
            Container(
              width: size.width,
              height: size.height,
              color: Colors.transparent, // Entirely transparent background
            ),
            // Center square cut-out
            Positioned(
              left: (size.width - overlayWidth) / 2,
              top: (size.height - overlayHeight) / 2,
              child: Container(
                width: overlayWidth,
                height: overlayHeight,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors
                        .white, // Bright border to make the center square visible
                    width: 4.0, // Thickness of the border
                  ),
                  color: Colors.transparent, // Fully transparent center
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        qrText = scanData.code;
      });
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
