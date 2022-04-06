import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Show Snackbar'),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.indigo,
                behavior: SnackBarBehavior.floating,
                duration: Duration(
                  seconds: 5,
                ),
                width: 400,
                dismissDirection: DismissDirection.endToStart,
                action: SnackBarAction(
                  label: 'Click Me',
                  onPressed: () {
                    print('Snackbar Clicked');
                  },
                ),
                content: Text(
                  'Hello',
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
