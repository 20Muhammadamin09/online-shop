import 'package:flutter/material.dart';

import '../../../dialog/center_diolog.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Center(
          child: Text(
            "Settings",
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 8,
          ),
          Center(
            child: Stack(
              children: [
                Image.asset("assets/images/avatar.png"),
                Positioned(
                  top: 54,
                  left: 52,
                  child: Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                        color: Color(0xFF006FFD),
                        borderRadius: BorderRadius.circular(50)),
                    child: Icon(
                      Icons.settings,
                      size: 12,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            "Lucas Scott",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
          ),
          Text(
            "@lucasscott3",
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Row(
              children: [
                Text(
                  "Saved Messages",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Icon(
                  Icons.keyboard_arrow_right_outlined,
                  size: 30,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Row(
              children: [
                Text(
                  "Recent Calls",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Icon(
                  Icons.keyboard_arrow_right_outlined,
                  size: 30,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Row(
              children: [
                Text(
                  "Devices",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Icon(
                  Icons.keyboard_arrow_right_outlined,
                  size: 30,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Row(
              children: [
                Text(
                  "Notifications",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Icon(
                  Icons.keyboard_arrow_right_outlined,
                  size: 30,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Row(
              children: [
                Text(
                  "Appearance",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Icon(
                  Icons.keyboard_arrow_right_outlined,
                  size: 30,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Row(
              children: [
                Text(
                  "Language",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Icon(
                  Icons.keyboard_arrow_right_outlined,
                  size: 30,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Row(
              children: [
                Text(
                  "Privacy & Security",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Icon(
                  Icons.keyboard_arrow_right_outlined,
                  size: 30,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Row(
              children: [
                Text(
                  "Storage",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Icon(
                  Icons.keyboard_arrow_right_outlined,
                  size: 30,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 61, vertical: 34),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.chat,
                      size: 30,
                      color: Color(0xFFD4D6DD),
                    ),
                    Text(
                      "Chats",
                      style: TextStyle(fontSize: 10, color: Color(0xFF71727A)),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.person,
                      size: 30,
                      color: Color(0xFFD4D6DD),
                    ),
                    Text(
                      "Friends",
                      style: TextStyle(fontSize: 10, color: Color(0xFF71727A)),
                    )
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        CenterDiolog.showCenterDiolog(context);
                      },
                      child: Icon(
                        Icons.settings,
                        size: 30,
                        color: Color(0xFFD4D6DD),
                      ),
                    ),
                    Text(
                      "Settings",
                      style: TextStyle(fontSize: 10, color: Color(0xFF71727A)),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
