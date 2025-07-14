import 'package:flutter/material.dart';
import 'package:grocery/screens/Profilescreens/my_card_details.dart';
import 'package:grocery/screens/Profilescreens/new_card.dart';
import 'package:grocery/screens/Profilescreens/profile_detail.dart';

class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
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
            const SizedBox(
              height: 70,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyCardDetails(),
                  ),
                );
              },
              child: Container(
                height: 58,
                width: 374,
                decoration: const BoxDecoration(color: Colors.transparent),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Image.asset('assets/Group 237.png'),
                    ),
                    const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 40),
                          child: Text(
                            "My Card",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF6D3805),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, top: 15),
                          child: Text(
                            "5342 **** **** 6745",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF6D3805),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 145),
                      child: Icon(
                        Icons.keyboard_arrow_right,
                        color: Color(0xFF6D3805),
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 1,
              width: 420,
              color: const Color(0x1A804F1E),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 58,
              width: 374,
              decoration: const BoxDecoration(color: Colors.transparent),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Image.asset('assets/Group 237.png'),
                  ),
                  const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 40),
                        child: Text(
                          "My Card",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF6D3805),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, top: 15),
                        child: Text(
                          "6589 **** **** 7850",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF6D3805),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 145),
                    child: Icon(
                      Icons.keyboard_arrow_right,
                      color: Color(0xFF6D3805),
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 1,
              width: 420,
              color: const Color(0x1A804F1E),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Image.asset(
                    'assets/Group (5).png',
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    "Apple Pay",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF6D3805),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 180),
                  child: Icon(
                    Icons.check,
                    color: Color(0xFF58A919),
                    size: 35,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 1,
              width: 420,
              color: const Color(0x1A804F1E),
            ),
          ],
        ),
      ),
    );
  }
}
