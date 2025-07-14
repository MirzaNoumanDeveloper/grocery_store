// ignore_for_file: prefer_final_fields, avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:grocery/screens/signupscreens/signup.dart';
import 'package:grocery/screens/signupscreens/signupscreen.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _isPasswordVisible2 = false;
  TextEditingController _conformpasswordController =
          TextEditingController(text: ''),
      _emailController = TextEditingController(text: '');

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
                  "Sign In",
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
              padding: const EdgeInsets.only(top: 0),
              child: Image.asset('assets/image5.png'),
            ),
            const SizedBox(
              height: 0,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 90, bottom: 0),
              child: Text(
                "Enter your email address and \npassword to access your account",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF6D3805),
                  letterSpacing: 0.41,
                ),
              ),
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
                    style: const TextStyle(),
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
            const Padding(
              padding: EdgeInsets.only(left: 240, top: 5),
              child: Text(
                "Forgote Password",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFFF5E00),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: GestureDetector(
                onTap: () {
                  FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: _emailController.text,
                          password: _conformpasswordController.text)
                      .then(
                    (value) {
                      return print("User Registered");
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
                      'Sign In',
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
                      "Don't have an account?",
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
                          builder: (context) => const SignUpScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Color(0xFFFF5E00),
                          fontWeight: FontWeight.w400,
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
