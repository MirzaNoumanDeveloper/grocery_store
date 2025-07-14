import 'package:flutter/material.dart';
import 'package:grocery/screens/homescreen/home.dart';

class MangoScreen extends StatefulWidget {
  const MangoScreen({super.key});

  @override
  State<MangoScreen> createState() => _MangoScreenState();
}

class _MangoScreenState extends State<MangoScreen> {
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
                builder: (context) => const Home(),
              ),
            );
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xFFFF5E00),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Image.asset('assets/pngegg 2.png'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 90, right: 220),
              child: Text(
                "Orginal Mango",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF6D3805),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 280, top: 10),
              child: Text(
                "\$3.00 /st",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF6D3805),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 10, top: 30),
              child: Text(
                "Golden Ripe Alphonsa mangoes delivered to your house in\nthe most hygenic way ever... Best for eating plain but can\nalso be made into shakes and cakes.",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF6D3805),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 50,
                      width: 286,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color(0xFFF4F4F4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Row(
                          children: [
                            Container(
                              height: 41,
                              width: 41,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60),
                                color: Colors.white,
                              ),
                              child: const Icon(
                                Icons.remove,
                                color: Color(0xFF6D3805),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 90),
                              child: Center(
                                child: Text(
                                  '2',
                                  style: TextStyle(
                                      fontSize: 24,
                                      color: Color(0xFF6D3805),
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 90),
                              child: Container(
                                height: 41,
                                width: 41,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  color: Colors.white,
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: Color(0xFF6D3805),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15, left: 40),
                    child: IconButton.filled(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_border_outlined,
                        color: Color(0xFFFF5E00),
                        size: 45,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: GestureDetector(
                onTap: () {
                  //  Navigator.push(
                  //  context,
                  //  MaterialPageRoute(
                  //  builder: (context) => const Home(),
                  //  ),
                  //  );
                },
                child: Container(
                  height: 50,
                  width: 370,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color(0xFFFF5E00),
                  ),
                  child: const Center(
                    child: Text(
                      'Add To cart',
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
            const SizedBox(
              height: 70,
            ),
            Container(
              height: 1,
              width: 410,
              color: const Color(0x2B6D3805),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 230, top: 70),
              child: Text(
                "You may also need",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF6D3805),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
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
                          child: Image.asset('assets/image20.png'),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 25, right: 70),
                          child: Text(
                            "Strawberry",
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
                            "1kg",
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
                                "\$24.0",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFFFF5E00),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 10, top: 10),
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
                              child: Image.asset('assets/image19.png'),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 25, right: 40),
                              child: Text(
                                "Avocado Bowl",
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
                                "1kg",
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
                                    "\$24.0",
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
                                child: Image.asset('assets/image11.png'),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 30, right: 40),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                    padding: const EdgeInsets.only(
                                        right: 10, top: 5),
                                    child: Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(60),
                                        color: const Color.fromRGBO(
                                            58, 161, 76, 1),
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
      ),
    );
  }
}
