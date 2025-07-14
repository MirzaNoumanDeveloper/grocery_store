// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:grocery/widgets/fruite.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
    required this.colors,
  });
  final Color colors;

  @override
  Widget build(BuildContext context) {
    var images = [
      'assets/image6.png',
      'assets/image7.png',
      'assets/image8.png',
      'assets/image9.png',
      'assets/image12.png',
      'assets/image13.png',
      'assets/image14.png',
      'assets/image15.png',
      'assets/image16.png',
      'assets/image17.png',
      'assets/image18.png',
    ];
    var colors = [
      const Color(0xFFEDD0FF),
      const Color(0xFFFFD9BA),
      const Color(0xFFFACCCC),
      const Color(0xFFFBC1BD),
      const Color(0xFFFFE299),
      const Color(0xFFFFFFFF),
      const Color(0xFFFFFFFF),
      const Color(0xFFFFFFFF),
      const Color(0xFFFFFFFF),
      const Color(0xFFFFFFFF),
      const Color(0xFFD6FAE9),
    ];
    var textdataa = [
      'Fruits',
      'Vegtables',
      'Meat',
      'Fish',
      'Sea food',
      'Juice',
      'Egg & Milk',
      'Ice cream',
      'Cake',
      'Botle',
      'Wash',
    ];

    return GridView.count(
      crossAxisCount: 3,
      childAspectRatio: 0.95,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      children: List.generate(
        images.length,
        (index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Fruites(
                          texttest: '',
                        ),
                      ),
                    );
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: colors[index],
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.all(20),
                        child: Image.asset(
                          images[index],
                          height: 70,
                          width: 100,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 0, top: 0, left: 0),
                alignment: Alignment.centerLeft,
                child: Center(
                  child: Text(
                    textdataa[index],
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF6D3805),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
