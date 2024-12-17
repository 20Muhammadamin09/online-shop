import 'package:flutter/material.dart';
import 'package:online_shop/srs/ui/auth/login_screen.dart';
import 'package:online_shop/srs/ui/auth/register_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> screens = [
    LoginScreen(),
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
                  Icons.home,
                  color: currentIndex == 0 ? Colors.blue : Colors.grey,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.star,
                    color: currentIndex == 1 ? Colors.blue : Colors.grey),
                label: "Star"),
            BottomNavigationBarItem(
                icon: Icon(Icons.dark_mode_outlined,
                    color: currentIndex == 2 ? Colors.blue : Colors.grey),
                label: "Moon"),
            BottomNavigationBarItem(
                icon: Icon(Icons.light_mode_outlined,
                    color: currentIndex == 3 ? Colors.blue : Colors.grey),
                label: "Sun"),
          ]),
    );
  }
}
