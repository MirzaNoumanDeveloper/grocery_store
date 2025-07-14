import 'package:flutter/material.dart';
import 'package:grocery/screens/Profilescreens/my_card.dart';

class NewCard extends StatefulWidget {
  const NewCard({super.key});

  @override
  State<NewCard> createState() => _NewCardState();
}

class _NewCardState extends State<NewCard> {
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
                builder: (context) => const MyCard(),
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
            const Center(
              child: Text(
                "New Card",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFFF5E00),
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 260),
              child: Text(
                "Card number",
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
            Container(
              height: 50,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xFFF3F3F3),
              ),
              child: const Padding(
                padding: EdgeInsets.only(),
                child: TextField(
                  obscureText: true,
                  style: TextStyle(),
                  strutStyle: StrutStyle(fontSize: 20),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.grey),
                    hintText: '       xxxx xxxx xxxx xxxx',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 275),
              child: Text(
                "Expiry Date",
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
            Container(
              height: 50,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xFFF3F3F3),
              ),
              child: const Padding(
                padding: EdgeInsets.only(),
                child: TextField(
                  obscureText: true,
                  style: TextStyle(),
                  strutStyle: StrutStyle(fontSize: 20),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.grey),
                    hintText: '       MM/YY',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 330),
              child: Text(
                "CCV",
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
            Container(
              height: 50,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xFFF3F3F3),
              ),
              child: const Padding(
                padding: EdgeInsets.only(),
                child: TextField(
                  obscureText: true,
                  style: TextStyle(),
                  strutStyle: StrutStyle(fontSize: 20),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.grey),
                    hintText: '       ****',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 275,
            ),
            GestureDetector(
              onTap: () {
                //  Navigator.push(
                //  context,
                //  MaterialPageRoute(
                //  builder: (context) => const SignIn(),
                //  ),
                //  );
              },
              child: Container(
                height: 50,
                width: 343,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: const Color(0xFFFF5E00),
                  ),
                  color: const Color(0xFFFF5E00),
                ),
                child: const Center(
                  child: Text(
                    'Add Card',
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
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
