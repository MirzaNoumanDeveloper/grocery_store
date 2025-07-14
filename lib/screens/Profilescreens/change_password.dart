import 'package:flutter/material.dart';
import 'package:grocery/screens/Profilescreens/profile_detail.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfileDetail(),
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
                "Change Password",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFFF5E00),
                ),
              ),
            ),
            const SizedBox(
              height: 70,
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
                child: TextField(
                  obscureText: true,
                  style: const TextStyle(),
                  strutStyle: const StrutStyle(fontSize: 20),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.lock_sharp,
                        color: Color(0xFFFF5E00),
                      ),
                    ),
                    hintText: 'Old Password',
                    suffixIcon: IconButton(
                      color: const Color(0xFFFF5E00),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.visibility_outlined,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
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
                child: TextField(
                  obscureText: true,
                  style: const TextStyle(),
                  strutStyle: const StrutStyle(fontSize: 20),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.lock_sharp,
                        color: Color(0xFFFF5E00),
                      ),
                    ),
                    hintText: 'New Password',
                    suffixIcon: IconButton(
                      color: const Color(0xFFFF5E00),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.visibility_outlined,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
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
                child: TextField(
                  obscureText: true,
                  style: const TextStyle(),
                  strutStyle: const StrutStyle(fontSize: 20),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(
                        Icons.lock_sharp,
                        color: Color(0xFFFF5E00),
                      ),
                    ),
                    hintText: 'Comfirm Password',
                    suffixIcon: IconButton(
                      color: const Color(0xFFFF5E00),
                      onPressed: () {},
                      icon: const Icon(
                        Icons.visibility_outlined,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 240,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: GestureDetector(
                onTap: () {
                  //  Navigator.push(
                  //  context,
                  //  MaterialPageRoute(
                  //  builder: (context) => const SignUpScreen(),
                  //  ),
                  //  );
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
                      'Confirm',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
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
                  color: const Color(0xFFFFFFFF),
                ),
                child: const Center(
                  child: Text(
                    'Back To Sign In',
                    style: TextStyle(
                      color: Color(0xFFFF5E00),
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
