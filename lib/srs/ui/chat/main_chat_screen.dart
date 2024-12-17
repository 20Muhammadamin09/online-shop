import 'package:flutter/material.dart';
import 'package:online_shop/srs/ui/auth/login_screen.dart';
import 'package:online_shop/srs/ui/auth/register_screen.dart';
import 'package:online_shop/srs/ui/chat/chat_screen.dart';

class MainChatScreen extends StatefulWidget {
  const MainChatScreen({super.key});
  @override
  State<MainChatScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainChatScreen> {
  List<Widget> screens = [
    ChatScreen(),
    RegisterScreen(),
    Container(
      color: Colors.green,
    ),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          currentIndex: currentIndex,
          onTap: (i) {
            setState(() {
              currentIndex = i;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat,
                  color: currentIndex == 0 ? Colors.blue : Colors.grey,
                ),
                label: "Chats"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person,
                    color: currentIndex == 1 ? Colors.blue : Colors.grey),
                label: "Friends"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings,
                    color: currentIndex == 2 ? Colors.blue : Colors.grey),
                label: "Settings"),
          ]),
    );
  }
}
