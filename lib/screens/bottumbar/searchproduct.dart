// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:grocery/screens/homescreen/homescreen.dart';
import 'package:grocery/widgets/catagories.dart';

class SearchProductScreen extends StatefulWidget {
  const SearchProductScreen({super.key});

  @override
  _SearchProductScreenState createState() => _SearchProductScreenState();
}

class _SearchProductScreenState extends State<SearchProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Color(0xFFFF5E00),
            )),
      ),
      body: Column(
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                "Categories",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFFF5E00),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            height: 50,
            width: 370,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: const Color(0xFFF3F3F3),
            ),
            child: const TextField(
              strutStyle: StrutStyle(fontSize: 20),
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: Padding(
                  padding: EdgeInsets.only(left: 5, top: 5),
                  child: Icon(
                    Icons.search,
                  ),
                ),
                hintText: 'Search',
              ),
            ),
          ),
          const Categories(
            colors: Color(0xFFFFFFFF), // Replace with your actual colors
          ),
        ],
      ),
    );
  }
}
