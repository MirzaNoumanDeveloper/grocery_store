import 'package:flutter/material.dart';
import 'package:grocery/screens/Profilescreens/order_profile.dart';
import 'package:grocery/screens/Profilescreens/payment_cart.dart';
import 'package:grocery/screens/Profilescreens/profile_detail.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
            Icons.keyboard_arrow_left_outlined,
            color: Color(0xFFFF5E00),
            size: 35,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.only(right: 30, bottom: 10),
                child: Text(
                  "Account",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFFF5E00),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileDetail(),
                    ),
                  );
                },
                child: const SizedBox(
                  height: 60,
                  width: 370,
                  child: Row(
                    children: [
                      Icon(
                        Icons.person_rounded,
                        color: Color(0xFFFF5E00),
                        size: 35,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          "Profile",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF6D3805),
                            letterSpacing: 0.09,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OrderScreen(),
                    ),
                  );
                },
                child: SizedBox(
                  height: 60,
                  width: 370,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Container(
                          height: 27,
                          width: 27,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            color: const Color(0xFFFF5E00),
                          ),
                          child: const Icon(
                            Icons.shopping_basket_outlined,
                            color: Color.fromARGB(255, 255, 255, 255),
                            size: 15,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Order",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF6D3805),
                            letterSpacing: 0.09,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 20),
              child: SizedBox(
                height: 60,
                width: 370,
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Color(0xFFFF5E00),
                      size: 35,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "Address",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF6D3805),
                          letterSpacing: 0.09,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PaymentCart(),
                    ),
                  );
                },
                child: const SizedBox(
                  height: 60,
                  width: 370,
                  child: Row(
                    children: [
                      Icon(
                        Icons.payment_outlined,
                        color: Color(0xFFFF5E00),
                        size: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Payment",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF6D3805),
                            letterSpacing: 0.09,
                          ),
                        ),
                      ),
                    ],
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
