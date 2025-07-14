import 'package:flutter/material.dart';
import 'package:grocery/screens/Profilescreens/see_items.dart';

class ProductItems extends StatefulWidget {
  const ProductItems({super.key});

  @override
  State<ProductItems> createState() => _ProductItemsState();
}

class _ProductItemsState extends State<ProductItems> {
  @override
  Widget build(BuildContext context) {
    var itemsimage = [
      'assets/image10.png',
      'assets/image11.png',
      'assets/image19.png',
      'assets/image23.png',
    ];
    var itemstext = [
      '      Red Apple',
      'Mangeo',
      'Banana',
      'salmon',
    ];
    var itemstextprice = [
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
                builder: (context) => const SeeItems(),
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
                  "Itemes",
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
                itemsimage.length,
                (index) {
                  return Container(
                    height: 0,
                    width: 320,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
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
                                            itemsimage[index],
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
                                        itemstext[index],
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
                                    itemstextprice[index],
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
          ],
        ),
      ),
    );
  }
}
