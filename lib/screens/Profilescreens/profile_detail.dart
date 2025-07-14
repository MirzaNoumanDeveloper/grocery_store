import 'package:flutter/material.dart';
import 'package:grocery/screens/Profilescreens/change_password.dart';
import 'package:grocery/screens/Profilescreens/edit_profile.dart';
import 'package:grocery/screens/Profilescreens/favoritescreen.dart';
import 'package:grocery/screens/Profilescreens/my_card.dart';
import 'package:grocery/screens/signupscreens/signup.dart';

class ProfileDetail extends StatefulWidget {
  const ProfileDetail({super.key});

  @override
  State<ProfileDetail> createState() => _ProfileDetailState();
}

class _ProfileDetailState extends State<ProfileDetail> {
  bool isSwitched = false;

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
                builder: (context) => const ProfileScreen(),
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
                "Profile",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFFF5E00),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 35),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EditProfile(),
                    ),
                  );
                },
                child: const Row(
                  children: [
                    Icon(
                      Icons.person,
                      color: Color(0xFF804F1E),
                      size: 35,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "Edit Profile",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF804F1E),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 220),
                      child: Icon(
                        Icons.keyboard_arrow_right_outlined,
                        color: Color(0xFF804F1E),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 35),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ChangePassword(),
                    ),
                  );
                },
                child: const Row(
                  children: [
                    Icon(
                      Icons.vpn_key_outlined,
                      color: Color(0xFF804F1E),
                      size: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 13),
                      child: Text(
                        "Change Password",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF804F1E),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 165),
                      child: Icon(
                        Icons.keyboard_arrow_right_outlined,
                        color: Color(0xFF804F1E),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 35),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyCard(),
                    ),
                  );
                },
                child: const Row(
                  children: [
                    Icon(
                      Icons.credit_card,
                      color: Color(0xFF804F1E),
                      size: 35,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "My Cards",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF804F1E),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 235),
                      child: Icon(
                        Icons.keyboard_arrow_right_outlined,
                        color: Color(0xFF804F1E),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 250, top: 30),
              child: Text(
                "App Settings",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFFF5E00),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 7, top: 15),
              child: Row(
                children: [
                  const Icon(
                    Icons.notifications,
                    color: Color(0xFF804F1E),
                    size: 35,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Notifications",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF906233),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 160),
                    child: Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(
                          () {
                            isSwitched = value;
                          },
                        );
                      },
                      activeTrackColor: const Color(0xFFFF5E00),
                      activeColor: const Color(0xFFFFFFFF),
                      inactiveTrackColor: Colors.grey,
                      hoverColor: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10, top: 25),
              child: Row(
                children: [
                  Icon(
                    Icons.g_translate,
                    color: Color(0xFF804F1E),
                    size: 35,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Language",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF804F1E),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 155),
                    child: Text(
                      "English",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF804F1E),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Icon(
                      Icons.keyboard_arrow_right_outlined,
                      color: Color(0xFF804F1E),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 25),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUp(),
                    ),
                  );
                },
                child: const Row(
                  children: [
                    Icon(
                      Icons.logout_rounded,
                      color: Color(0xFF804F1E),
                      size: 35,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        "Logout",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF804F1E),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
