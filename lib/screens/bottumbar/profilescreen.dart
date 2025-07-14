import 'package:flutter/material.dart';
import 'package:grocery/screens/bottumbar/cardscreen/cartscreen.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Color(0xFFFF7300),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: Text(
                "Favorite",
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
            Image.asset(
              'assets/image24.png',
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Your heart is empty",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xFF6D3805),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Start fall in love with some good goods ",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xFF6D3805),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CartScreen(),
                    ),
                  );
                },
                child: Container(
                  height: 50,
                  width: 343,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color(0xFFFF5E00),
                  ),
                  child: const Center(
                    child: Text(
                      'Start shoping',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
