import 'package:flutter/material.dart';
import 'package:grocery/screens/bottumbar/cardscreen/items_widgets.dart';
import 'package:grocery/screens/Profilescreens/see_items.dart';
import 'package:grocery/screens/Profilescreens/favoritescreen.dart';

class PaymentCart extends StatefulWidget {
  const PaymentCart({super.key});

  @override
  State<PaymentCart> createState() => _PaymentCartState();
}

class _PaymentCartState extends State<PaymentCart> {
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
          icon: const Padding(
            padding: EdgeInsets.only(top: 0, left: 0),
            child: Icon(
              Icons.arrow_back_ios,
              color: Color(0xFFFF5E00),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Row(
              children: [],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 7),
              child: Text(
                "Payment",
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
            const SizedBox(
              height: 80,
              width: 360,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "In-Store Pick Up",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF6D3805),
                        ),
                      ),
                      Text(
                        "FREE",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF6D3805),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Some Stores May Be Temporarily\nUnavalable.",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF6D3805),
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: Color(0xFF6D3805),
                        size: 35,
                      ),
                    ],
                  ),
                ],
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
                      color: Color(0xFFFF5E00),
                    ),
                  ),
                  hintText: 'Search For Town,Street,ZipCode...',
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 120,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                border: Border.all(
                  color: const Color(0xFFFFE6CC),
                ),
                color: const Color(0xFFFFF4E9),
              ),
              child: const Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          "Goteborg\nArkaden",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF6D3805),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Text(
                          "1.4 MI",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF6D3805),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 240),
                    child: Icon(
                      Icons.keyboard_arrow_right,
                      color: Color(0xFF6D3805),
                      size: 35,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 120,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                border: Border.all(
                  color: const Color(0xFFFFE6CC),
                ),
                color: const Color(0xFFFFF4E9),
              ),
              child: const Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          "Kungsbacka\nKungsmassan",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF6D3805),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 55),
                        child: Text(
                          "17 MI",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF6D3805),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 200),
                    child: Icon(
                      Icons.keyboard_arrow_right,
                      color: Color(0xFF6D3805),
                      size: 35,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProductItems(),
                  ),
                );
              },
              child: Container(
                height: 100,
                width: 370,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFFFFF4E9),
                  border: Border.all(
                    color: const Color(0xFFFFE6CC),
                  ),
                ),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.shopping_basket,
                        color: Color(0xFF6D3805),
                        size: 40,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "See Itemes",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF6D3805),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 160),
                      child: Icon(
                        Icons.keyboard_arrow_right,
                        color: Color(0xFF6D3805),
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 130,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                border: Border.all(
                  color: const Color(0xFFFFE6CC),
                ),
                color: const Color(0xFFFFF4E9),
              ),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 165),
                        child: Text(
                          "Payment Method",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF6D3805),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Image.asset(
                              'assets/Group4.png',
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              "Apple Pay",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF6D3805),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 150),
                            child: Icon(
                              Icons.check,
                              color: Color(0xFF58A919),
                              size: 35,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 90,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                border: Border.all(
                  color: const Color(0xFFFFE6CC),
                ),
                color: const Color(0xFFFFF4E9),
              ),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.paid,
                      color: Color(0xFF58A919),
                      size: 55,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Cash on Delivery",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF6D3805),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 170,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                border: Border.all(
                  color: const Color(0xFFFFE6CC),
                ),
                color: const Color(0xFFFFF4E9),
              ),
              child: const Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 185, top: 15),
                            child: Text(
                              "Order Sammery",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF6D3805),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 0),
                              child: Text(
                                "Subtotal",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF6D3805),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 200),
                              child: Text(
                                "\$137.00",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF6D3805),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 0),
                              child: Text(
                                "Tax",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF6D3805),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 260),
                              child: Text(
                                "\$4.50",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF6D3805),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 25),
                            child: Text(
                              "In-Store Pick Up",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF6D3805),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 120),
                            child: Text(
                              "\$00.00",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF6D3805),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 40,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                border: Border.all(
                  color: const Color(0xFFFFE6CC),
                ),
                color: const Color(0xFFFFF4E9),
              ),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "Total:",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF6D3805),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 225),
                    child: Text(
                      "\$141.50",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF6D3805),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SeeItems(),
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
                      'CheckOut\$141.50',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
