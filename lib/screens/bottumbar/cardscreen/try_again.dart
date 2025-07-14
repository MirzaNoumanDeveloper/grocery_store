import 'package:flutter/material.dart';
import 'package:grocery/screens/homescreen/homescreen.dart';

class TryAgain extends StatefulWidget {
  const TryAgain({super.key});

  @override
  State<TryAgain> createState() => _TryAgainState();
}

class _TryAgainState extends State<TryAgain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Image.asset(
                'assets/image33.png',
              ),
            ),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 90),
              child: Text(
                'Oops! Order Failed!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF7F4E1D),
                ),
              ),
            ),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                "Something went terribly wrong",
                style: TextStyle(
                  fontSize: 16,
                  height: 1,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF7F4E1D),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TryAgain(),
                  ),
                );
              },
              child: Container(
                height: 60,
                width: 343,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color(0xFFFF5E00),
                ),
                child: const Center(
                  child: Text(
                    'Try Again',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
            },
            child: Container(
              height: 60,
              width: 343,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: const Color(0xFFFF5E00),
                ),
                color: const Color(0xFFFFFFFF),
              ),
              child: const Center(
                child: Text(
                  'Back Home',
                  style: TextStyle(
                    color: Color(0xFFFF5E00),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
