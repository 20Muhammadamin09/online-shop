import 'package:flutter/material.dart';
import 'package:online_shop/srs/ui/auth/login_screen.dart';
import 'package:online_shop/srs/ui/auth/register_screen.dart';
import 'package:online_shop/srs/ui/chat/tabbar_screen.dart';

class MainTabbarScreen extends StatefulWidget {
  const MainTabbarScreen({super.key});
  @override
  State<MainTabbarScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainTabbarScreen> {
  List<Widget> screens = [
    TabbarScreen(),
    RegisterScreen(),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.black,
    ),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blue,
          type: BottomNavigationBarType.fixed,
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
                  Icons.explore_outlined,
                  color: currentIndex == 0 ? Colors.blue : Colors.grey,
                ),
                label: "Explore"),
            BottomNavigationBarItem(
                icon: Icon(Icons.edit,
                    color: currentIndex == 1 ? Colors.blue : Colors.grey),
                label: "Projects"),
            BottomNavigationBarItem(
                icon: Icon(Icons.mail,
                    color: currentIndex == 2 ? Colors.blue : Colors.grey),
                label: "Inbox"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person,
                    color: currentIndex == 3 ? Colors.blue : Colors.grey),
                label: "Profile"),
          ]),
    );
  }
}
