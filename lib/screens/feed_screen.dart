import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feed'),
      ),
      body: ListView.builder(
        itemCount: 10, // Replace with your actual data count
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Feed Item $index'),
            subtitle: Text('Description of Feed Item $index'),
          );
        },
      ),
    );
  }
}
