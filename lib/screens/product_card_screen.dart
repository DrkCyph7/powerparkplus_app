import 'package:flutter/material.dart';

class ProductCardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
        ),
        itemCount: 10, // Replace with your actual data count
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                Image.asset(
                    'assets/images/product.png'), // Replace with your image path
                Text('Product $index'),
                Text('\$${(index + 1) * 10}'),
              ],
            ),
          );
        },
      ),
    );
  }
}
