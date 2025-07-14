// ignore: file_names
import 'package:flutter/material.dart';

class ItemsImages extends StatelessWidget {
  const ItemsImages({
    super.key,
    required this.images,
  });
  final String images;

  @override
  Widget build(BuildContext context) {
    var images = [
      'image/10.png',
      'image/11.png',
      'image/19.png',
      'image/20.png',
      'image/21.png',
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          4,
          (index) => ItemsBox(
            images: images[index],
          ),
        ),
      ),
    );
  }
}

class ItemsBox extends StatelessWidget {
  const ItemsBox({
    super.key,
    required this.images,
  });

  final String images;

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
      ],
    );
  }
}
