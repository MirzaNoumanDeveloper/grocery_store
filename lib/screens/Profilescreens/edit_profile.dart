import 'package:flutter/material.dart';
import 'package:grocery/screens/Profilescreens/profile_detail.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0x0fffffff),
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
                "Edit Profile",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFFF5E00),
                ),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Container(
              height: 50,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFFF3F3F3),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 20),
                child: TextField(
                  obscureText: true,
                  strutStyle: StrutStyle(fontSize: 20),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'mati egh',
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 30,
              ),
              child: Container(
                height: 50,
                width: 390,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color(0xFFF3F3F3),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(
                    top: 20,
                  ),
                  child: IntlPhoneField(
                    obscureText: false,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Phone Number',
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 320,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: GestureDetector(
                onTap: () {
                  // Navigator.push(
                  // context,
                  // MaterialPageRoute(
                  // builder: (context) => const ChangePassword(),
                  // ),
                  // );
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
                      'Update Profile',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
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
