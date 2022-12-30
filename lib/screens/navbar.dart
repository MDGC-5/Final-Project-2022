

import 'package:flutter/material.dart';
import 'package:flutterforbeginners2/screens/cartscreen.dart';
import 'package:flutterforbeginners2/screens/home.dart';
// import 'package:flutterforbeginners2/screens/homescreen.dart';
import 'package:flutterforbeginners2/screens/orderscreen.dart';
import 'package:flutterforbeginners2/screens/profilescreen.dart';
import 'package:flutterforbeginners2/screens/wishlistscreen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  List _screens = [
    HomeScreen(),
    WishListScreen(),
    OrderScreen(),
    CartScreen(),
    ProfileScreen()
  ];

  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: _updateIndex,
        selectedItemColor: Colors.blue[700],
        selectedFontSize: 13,
        unselectedFontSize: 13,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            label: "Menu",
            icon: Icon(Icons.view_quilt_outlined),
          ),
          BottomNavigationBarItem(
            label: "wish list",
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: "Order",
            icon: Icon(Icons.grid_view),
          ),
          BottomNavigationBarItem(
            label: "Cart",
            icon: Icon(Icons.grid_view),
          ),
          BottomNavigationBarItem(
            label: "Profaile",
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
    );
  }
}
