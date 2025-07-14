import 'package:flutter/material.dart';
import 'package:grocery/screens/bottumbar/searchproduct.dart';
import 'package:grocery/widgets/itemwidget.dart';

class Fruites extends StatefulWidget {
  const Fruites({
    super.key,
    required this.texttest,
  });
  final String texttest;
  @override
  State<Fruites> createState() => _FruitesState();
}

class _FruitesState extends State<Fruites> {
  var texttest = [
    'Fruits',
    'Vegtables',
    'Meat',
    'Fish',
    'Sea food',
    'Juice',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(0),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SearchProductScreen(),
                    ),
                  );
                },
                icon: const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xFFFF5E00),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: Text(
                "Fruits",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFFF5E00),
                ),
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
                    ),
                  ),
                  hintText: 'Search',
                ),
              ),
            ),
            SizedBox(
              height: 70.0,
              child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 10),
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          texttest[index],
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF804F1E),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            const ItemWidget(
              image: '',
              textdata: '',
            ),
          ],
        ),
      ),
    );
  }
}
