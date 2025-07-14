// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:grocery/screens/bottumbar/cardscreen/cartscreen.dart';
import 'package:grocery/screens/Profilescreens/favoritescreen.dart';
import 'package:grocery/screens/homescreen/homescreen.dart';
import 'package:grocery/screens/bottumbar/profilescreen.dart';
import 'package:grocery/screens/bottumbar/searchproduct.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  int customerId = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Future<void> checkId() async {}

  @override
  void initState() {
    checkId();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          HomeScreen(),
          SearchProductScreen(),
          CartScreen(),
          FavoriteScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 6,
              blurRadius: 5,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(0, 255, 255, 255),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color.fromARGB(244, 56, 5, 1),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Account',
            ),
          ],
          currentIndex: _selectedIndex,
          // selectedItemColor: primaryColor,
          // unselectedItemColor: textColors,
          unselectedLabelStyle: const TextStyle(),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
