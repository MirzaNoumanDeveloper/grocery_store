import 'package:flutter/material.dart';
import 'package:grocery/screens/Profilescreens/favoritescreen.dart';
import 'package:grocery/widgets/history_screen.dart';
import 'package:grocery/widgets/ongoing_screen.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfileScreen(),
              ),
            );
          },
          icon: const Icon(
            Icons.keyboard_arrow_left,
            color: Color(0xFFFF5E00),
            size: 35,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: Text(
                "Orders",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFFF5E00),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Ongoing(),
                        ),
                      );
                    },
                    child: const Text(
                      "Ongoing",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFFF5E00),
                        letterSpacing: 0.1,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HistoryScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    "History",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF804F1E),
                      letterSpacing: 0.1,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 90,
            ),
            Image.asset('assets/image25.png'),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "There is n ongoing order right now. You can\n                        order from home",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xFF804F1E),
                letterSpacing: 0.6,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
