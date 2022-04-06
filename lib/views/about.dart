import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Icon(
              Icons.notifications,
              size: 40,
            ),
            Positioned(
              child: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
