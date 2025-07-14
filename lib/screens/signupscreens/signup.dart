import 'package:flutter/material.dart';
import 'package:grocery/screens/signinscreen/signin.dart';
import 'package:grocery/screens/signupscreens/signupscreen.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 90),
              child: Image.asset(
                'assets/image1.png',
              ),
            ),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                'Realax and shop',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF7F4E1D),
                ),
              ),
            ),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 25),
              child: Text(
                "    Shop online and get grocories\ndelivered from stores to your home\n            in as fast as 1 hour .",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF7F4E1D),
                  letterSpacing: 0.4,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUpScreen(),
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
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignIn(),
                ),
              );
            },
            child: Container(
              height: 50,
              width: 343,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: const Color(0xFFFF5E00),
                ),
                color: const Color(0xFFFFFFFF),
              ),
              child: const Center(
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    color: Color(0xFFFF5E00),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
