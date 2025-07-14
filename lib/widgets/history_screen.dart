import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 100,
              width: 370,
              decoration: const BoxDecoration(),
              child: Row(
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: const Color(0xFFF37A20),
                    ),
                    child: const Icon(
                      Icons.shopping_basket_outlined,
                      color: Colors.white,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 190),
                          child: Text(
                            "Order #345",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF804F1E),
                              letterSpacing: 0.6,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 18),
                              child: Text(
                                "Delivered",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF5EC401),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 200),
                              child: Text(
                                "\$700",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFFF37A20),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 180),
                          child: Text(
                            "October 26, 2014",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF804F1E),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              width: 470,
              color: const Color(0x0F6D3805),
            ),
            Container(
              height: 100,
              width: 370,
              decoration: const BoxDecoration(),
              child: Row(
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: const Color(0xFFF37A20),
                    ),
                    child: const Icon(
                      Icons.shopping_basket_outlined,
                      color: Colors.white,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 185),
                          child: Text(
                            "Order #345",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF804F1E),
                              letterSpacing: 0.6,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                "Cancelled",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFFF2110D),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 190),
                              child: Text(
                                "\$452",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFFF37A20),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 175),
                          child: Text(
                            "October 14, 2016",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF804F1E),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              width: 470,
              color: const Color(0x0F6D3805),
            ),
            Container(
              height: 100,
              width: 370,
              decoration: const BoxDecoration(),
              child: Row(
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: const Color(0xFFF37A20),
                    ),
                    child: const Icon(
                      Icons.shopping_basket_outlined,
                      color: Colors.white,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 190),
                          child: Text(
                            "Order #347",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF804F1E),
                              letterSpacing: 0.6,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 18),
                              child: Text(
                                "Delivered",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF5EC401),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 200),
                              child: Text(
                                "\$281",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFFF37A20),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 200),
                          child: Text(
                            "July 26, 2017",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF804F1E),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              width: 470,
              color: const Color(0x0F6D3805),
            ),
          ],
        ),
      ),
    );
  }
}
