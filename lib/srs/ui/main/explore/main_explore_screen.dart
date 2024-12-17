import 'package:flutter/material.dart';
import 'package:online_shop/srs/ui/auth/login_screen.dart';
import 'package:online_shop/srs/ui/auth/register_screen.dart';
import 'package:online_shop/srs/ui/main/explore/explore_screen.dart';

class MainExploreScreen extends StatefulWidget {
  const MainExploreScreen({super.key});
  @override
  State<MainExploreScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainExploreScreen> {
  List<Widget> screens = [
    ExploreScreen(),
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
                icon: Icon(Icons.category_outlined,
                    color: currentIndex == 1 ? Colors.blue : Colors.grey),
                label: "Categories"),
            BottomNavigationBarItem(
                icon: Icon(Icons.store_sharp,
                    color: currentIndex == 2 ? Colors.blue : Colors.grey),
                label: "Stores"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person,
                    color: currentIndex == 3 ? Colors.blue : Colors.grey),
                label: "Profile"),
          ]),
    );
  }
}
