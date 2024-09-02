import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListTile(
              title: Text('Product 1'),
              subtitle: Text('Quantity: 1'),
              trailing: Text('\$10'),
            ),
            ListTile(
              title: Text('Product 2'),
              subtitle: Text('Quantity: 2'),
              trailing: Text('\$20'),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                // Handle checkout action
              },
              child: Text('Checkout'),
            ),
          ],
        ),
      ),
    );
  }
}
