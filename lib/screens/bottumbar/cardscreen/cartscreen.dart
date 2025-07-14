import 'package:flutter/material.dart';
import 'package:grocery/screens/Profilescreens/payment_cart.dart';
import 'package:grocery/widgets/fruite.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

late final String prductimage;
late final String producttext;

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    var prductimage = [
      'assets/image10.png',
      'assets/image11.png',
      'assets/image19.png',
      'assets/image23.png',
    ];
    var producttext = [
      '      Red Apple',
      'Mangeo',
      'Banana',
      'salmon',
    ];
    var producttextprice = [
      '\$4.99 kg',
      '\$5.99 kg',
      '\$24 kg',
      '\$50 kg',
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Fruites(
                  texttest: '',
                ),
              ),
            );
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xFFFF5E00),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "Cart",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFFF5E00),
                  ),
                ),
              ),
            ),
            GridView.count(
              childAspectRatio: 3,
              crossAxisCount: 1,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(
                prductimage.length,
                (index) {
                  return Container(
                    height: 0,
                    width: 320,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.all(10),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 10, top: 0, right: 10),
                                          child: Image.asset(
                                            prductimage[index],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.only(
                                          bottom: 40, top: 0, right: 80),
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        producttext[index],
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFF6D3805),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 30,
                                          width: 98,
                                          margin: const EdgeInsets.only(
                                              top: 10, left: 0),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: const Color(0xFFF4F4F4),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(left: 0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  height: 25,
                                                  width: 25,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            60),
                                                    color: Colors.white,
                                                  ),
                                                  child: const Icon(
                                                    Icons.remove,
                                                    color: Color(0xFF6D3805),
                                                  ),
                                                ),
                                                const Text(
                                                  '2',
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    color: Color(0xFF6D3805),
                                                  ),
                                                ),
                                                Container(
                                                  height: 25,
                                                  width: 25,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            60),
                                                    color: Colors.white,
                                                  ),
                                                  child: const Icon(
                                                    Icons.add,
                                                    color: Color(0xFF6D3805),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 70, left: 30),
                                  child: Text(
                                    producttextprice[index],
                                    style: const TextStyle(
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
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PaymentCart(),
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
                      'CheckOut',
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
          ],
        ),
      ),
    );
  }
}
