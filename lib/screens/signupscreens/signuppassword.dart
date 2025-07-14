// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:grocery/screens/signupscreens/signupscreen.dart';
import 'package:grocery/screens/signupscreens/signupverification.dart';

class SignUpPassword extends StatefulWidget {
  const SignUpPassword({super.key});

  @override
  State<SignUpPassword> createState() => _SignUpPasswordState();
}

class _SignUpPasswordState extends State<SignUpPassword> {
  bool _isPasswordVisible = false;
  bool _isPasswordVisible2 = false;
  TextEditingController _passwordController = TextEditingController(),
      _conformpasswordController = TextEditingController();

  void _togglePasswordVisibility() {
    setState(
      () {
        _isPasswordVisible = !_isPasswordVisible;
      },
    );
  }

  void _togglePasswordVisibility2() {
    setState(
      () {
        _isPasswordVisible2 = !_isPasswordVisible2;
      },
    );
  }

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
                builder: (context) => const SignUpScreen(),
              ),
            );
          },
          icon: const Padding(
            padding: EdgeInsets.only(top: 0),
            child: Icon(
              Icons.arrow_back_ios,
              color: Color(0xFFFF5E00),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: 0),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFFF5E00),
                    letterSpacing: 0.41,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Image.asset('assets/image3.png'),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 210, top: 50),
              child: Text(
                "Enter the password",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF7F4E1D),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 90, top: 15),
              child: Text(
                "For the security & safety please choose a\npassword",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF7F4E1D),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xFFF3F3F3),
              ),
              child: Padding(
                padding: const EdgeInsets.only(),
                child: TextFormField(
                  controller: _passwordController,
                  autocorrect: true,
                  obscureText: !_isPasswordVisible,
                  style: const TextStyle(),
                  strutStyle: const StrutStyle(fontSize: 20),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: const Icon(
                      Icons.lock_sharp,
                      color: Color(0xFFFF5E00),
                    ),
                    hintText: 'Password',
                    suffixIcon: IconButton(
                      color: const Color(0xFFFF5E00),
                      onPressed: _togglePasswordVisibility,
                      icon: Icon(
                        _isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xFFF3F3F3),
              ),
              child: Padding(
                padding: const EdgeInsets.only(),
                child: TextFormField(
                  autocorrect: true,
                  controller: _conformpasswordController,
                  obscureText: !_isPasswordVisible2,
                  style: const TextStyle(),
                  strutStyle: const StrutStyle(fontSize: 20),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: const Icon(
                      Icons.lock_sharp,
                      color: Color(0xFFFF5E00),
                    ),
                    hintText: 'Confirm Password',
                    suffixIcon: IconButton(
                      color: const Color(0xFFFF5E00),
                      onPressed: _togglePasswordVisibility2,
                      icon: Icon(
                        _isPasswordVisible2
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpVerification(),
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
                      'Next',
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
