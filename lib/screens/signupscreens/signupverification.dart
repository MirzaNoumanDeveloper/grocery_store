import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:grocery/screens/homescreen/home.dart';
// import 'package:grocery/screens/homescreen.dart';
import 'package:grocery/screens/signupscreens/signuppassword.dart';
import 'package:sms_autofill/sms_autofill.dart';

class SignUpVerification extends StatefulWidget {
  const SignUpVerification({super.key});

  @override
  State<SignUpVerification> createState() => _SignUpVerificationState();
}

class _SignUpVerificationState extends State<SignUpVerification> {
  String codeValue = '';

  void listenOtp() async {
    super.initState();
    // SmsAutoFill().listenForCode;
    // if (kDebugMode) {
    //   print("OTP listen Called");
    // }
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
                builder: (context) => const SignUpPassword(),
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
              child: Image.asset('assets/image4.png'),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 165, top: 30),
              child: Text(
                "Enter Verification Code",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF7F4E1D),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 200, top: 20),
              child: Text(
                "We have sent SMS to:\n046 XXX XX XX",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF7F4E1D),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: PinFieldAutoFill(
                currentCode: codeValue,
                codeLength: 5,
                onCodeChanged: (code) {
                  if (kDebugMode) {
                    print("onCodeChanged $code");
                  }
                  setState(() {
                    codeValue = code.toString();
                  });
                },
                onCodeSubmitted: (val) {
                  if (kDebugMode) {
                    print("onCodeChanged $val");
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Home(),
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
