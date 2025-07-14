import 'package:flutter/material.dart';
import 'package:grocery/screens/Profilescreens/new_card.dart';
import 'package:grocery/screens/Profilescreens/profile_detail.dart';

class MyCardDetails extends StatefulWidget {
  const MyCardDetails({super.key});

  @override
  State<MyCardDetails> createState() => _MyCardDetailsState();
}

class _MyCardDetailsState extends State<MyCardDetails> {
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
                builder: (context) => const ProfileDetail(),
              ),
            );
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xFFFF5E00),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NewCard(),
                ),
              );
            },
            icon: const Icon(
              Icons.add,
              size: 30,
              color: Color(0xFFFF5E00),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: Text(
                "My Cards",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFFF5E00),
                ),
              ),
            ),
            Image.asset('assets/image28.png'),
            const SizedBox(
              height: 0,
            ),
            const Text(
              "No Saved Card",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xFF6D3805),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "You can save your card info to make\n            purchase easier, faster.",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xFF6D3805),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
