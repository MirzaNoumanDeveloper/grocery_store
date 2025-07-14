// ignore_for_file: recursive_getters

import 'package:flutter/material.dart';
import 'package:grocery/screens/homescreen/mango_screen.dart';
import 'package:grocery/widgets/circulbox.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final Color colors;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   actions: [
      //     IconButton(
      //       onPressed: () {},
      //       icon: const Icon(Icons.dark_mode),
      //     ),
      //   ],
      // ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 70),
              child: Text(
                "Grocer",
                style: TextStyle(
                  fontSize: 36,
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
            height: 55,
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
          const SizedBox(
            height: 30,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 100),
                child: Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF6D3805),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "see all",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFF5E00),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const CirculBox(
            colors: Color(0xFFEDD0FF),
          ),
          const SizedBox(
            height: 50,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 100),
                child: Text(
                  "Popular deals",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF6D3805),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "see all",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFF5E00),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  height: 200,
                  width: 160,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color(0xFFC4C4C4),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Image.asset('assets/image10.png'),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 25, right: 70),
                        child: Text(
                          "Red Apple",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF6D3805),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 2, right: 85),
                        child: Text(
                          "1kg,priceg",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF929292),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 10, top: 10),
                            child: Text(
                              "\$4,99",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFFF5E00),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10, top: 10),
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60),
                                color: const Color.fromRGBO(58, 161, 76, 1),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 200,
                      width: 160,
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: const Color(0xFFC4C4C4),
                        ),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Image.asset('assets/image11.png'),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 25, right: 40),
                            child: Text(
                              "Orginal Banana",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF6D3805),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 2, right: 85),
                            child: Text(
                              "1kg,priceg",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF929292),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 10, top: 5),
                                child: Text(
                                  "\$5,99",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFFFF5E00),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 10, top: 5),
                                child: Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60),
                                    color: const Color.fromRGBO(58, 161, 76, 1),
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MangoScreen(),
                          ),
                        );
                      },
                      child: Container(
                        height: 200,
                        width: 160,
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color(0xFFC4C4C4),
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Image.asset('assets/image21.png'),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 30, right: 40),
                              child: Text(
                                "Orginal Mango",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF6D3805),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 2, right: 85),
                              child: Text(
                                "1kg,priceg",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF929292),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 10, top: 5),
                                  child: Text(
                                    "\$3,00",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFFFF5E00),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(right: 10, top: 5),
                                  child: Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(60),
                                      color:
                                          const Color.fromRGBO(58, 161, 76, 1),
                                    ),
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
