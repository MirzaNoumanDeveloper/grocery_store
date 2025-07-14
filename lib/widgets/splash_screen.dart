import 'package:flutter/material.dart';
import 'package:grocery/screens/homescreen/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  Future<void> _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 4000), () {});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const Home(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Column(
        children: [
          Center(
            child: Image.asset('assets/grocery_logo.png'),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 400),
            child: Center(
              child: Text(
                'Developed By: Muhammad Nouman',
                style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
