import 'package:demo/views/about.dart';
import 'package:demo/views/home.dart';
import 'package:demo/views/profile.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _index = 0;

  List _widget = [
    Home(),
    About(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _widget[_index],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 40,
        selectedItemColor: Colors.amber,
        currentIndex: _index,
        unselectedItemColor: Colors.deepOrange,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.shifting,
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.info,
            ),
            label: 'About',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
