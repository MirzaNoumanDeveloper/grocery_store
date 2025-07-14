// ignore: file_names
import 'package:flutter/material.dart';
import 'package:grocery/screens/bottumbar/cardscreen/cartscreen.dart';

class ItemWidget extends StatefulWidget {
  const ItemWidget({
    super.key,
    required this.image,
    required this.textdata,
  });
  final String image;
  final String textdata;

  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  @override
  Widget build(BuildContext context) {
    var image = [
      'assets/image10.png',
      'assets/image11.png',
      'assets/image19.png',
      'assets/image20.png',
      'assets/image21.png',
    ];
    var textdata = [
      {
        'Red Apple',
        '1kg',
        '\$ 4.99',
      },
      {
        'Orginal Banana',
        '1kg',
        '\$ 5.99',
      },
      {
        'Avocado Bowl',
        '1kg',
        '\$ 3.99',
      },
      {
        'Strawberry',
        '1kg',
        '\$ 24.0',
      },
      {
        'Orginal Mango',
        '1kg',
        '\$ 3.00',
      },
    ];
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.93,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: List.generate(
        image.length,
        (index) {
          return Container(
            height: 100,
            width: 105,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.grey),
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: Image.asset(
                      image[index],
                      height: 90,
                      width: 120,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 0, top: 10, left: 15),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '${textdata[index]}',
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF6D3805),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(),
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
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
