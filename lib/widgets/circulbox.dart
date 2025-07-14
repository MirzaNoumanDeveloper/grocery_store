import 'package:flutter/material.dart';

class CirculBox extends StatelessWidget {
  const CirculBox({
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
    ];
    var colors = [
      const Color(0xFFEDD0FF),
      const Color(0xFFFFD9BA),
      const Color(0xFFFACCCC),
      const Color(0xFFFBC1BD),
    ];
    var texttest = [
      'Fruits',
      'Vegtables',
      'Meat',
      'Fish',
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          4,
          (index) => CirculBoxs(
            colors: colors[index],
            images: images[index],
            texttest: texttest[index],
          ),
        ),
      ),
    );
  }
}

class CirculBoxs extends StatelessWidget {
  const CirculBoxs({
    super.key,
    required this.colors,
    required this.images,
    required this.texttest,
  });

  final Color colors;
  final String images;
  final String texttest;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 100,
              width: 100,
              margin: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: colors,
              ),
              child: Center(
                child: Image.asset(
                  images,
                  height: 110,
                  width: 110,
                ),
              ),
            ),
          ],
        ),
        Text(
          texttest,
          style: const TextStyle(
              color: Color(0xFF6D3805),
              fontSize: 15,
              fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
