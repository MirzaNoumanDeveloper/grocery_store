// ignore_for_file: prefer_final_fields, avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:grocery/screens/signupscreens/signup.dart';
import 'package:grocery/screens/signupscreens/signuppassword.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isPasswordVisible2 = false;

  TextEditingController _emailController = TextEditingController(text: ""),
      _conformpasswordController = TextEditingController(text: "");

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
                builder: (context) => const SignUp(),
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
              padding: const EdgeInsets.only(bottom: 0),
              child: Image.asset('assets/image2.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 30),
              child: Container(
                height: 50,
                width: 370,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xFFF3F3F3),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextFormField(
                    autocorrect: true,
                    controller: _emailController,
                    style: const TextStyle(),
                    strutStyle: const StrutStyle(fontSize: 20),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email',
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 30, top: 20),
              child: Container(
                height: 50,
                width: 370,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xFFF3F3F3),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextFormField(
                    autocorrect: true,
                    controller: _conformpasswordController,
                    obscureText: !_isPasswordVisible2,
                    strutStyle: const StrutStyle(fontSize: 20),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                      suffixIcon: IconButton(
                        color: const Color(0xFF6D3805),
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
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.only(right: 45, top: 10),
                child: Text(
                  "We need to verify you. We will send you a one\ntime verification code. ",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF7F4E1D),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: GestureDetector(
                onTap: () async {
                  await FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                          email: _emailController.text,
                          password: _conformpasswordController.text)
                      .then(
                    (value) {
                      return print("User Register");
                    },
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
            Row(
              children: [
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: 80, bottom: 20),
                    child: Text(
                      'Already have an account?',
                      style: TextStyle(color: Color(0xFF7F4E1D), fontSize: 16),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 60, bottom: 20),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpPassword(),
                        ),
                      );
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          color: Color(0xFFFF5E00),
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
