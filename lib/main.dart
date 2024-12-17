import 'package:flutter/material.dart';
import 'package:online_shop/shopping_screen.dart';
import 'package:online_shop/srs/ui/auth/login_screen.dart';
import 'package:online_shop/srs/ui/auth/otp_screen.dart';
import 'package:online_shop/srs/ui/auth/register_screen.dart';
import 'package:online_shop/srs/ui/chat/chat_screen.dart';
import 'package:online_shop/srs/ui/chat/main_chat_screen.dart';
import 'package:online_shop/srs/ui/chat/main_tabbar_screen.dart';
import 'package:online_shop/srs/ui/chat/tabbar_screen.dart';
import 'package:online_shop/srs/ui/chekout/checkout_screen.dart';
import 'package:online_shop/srs/ui/main/explore/explore_screen.dart';
import 'package:online_shop/srs/ui/main/explore/main_explore_screen.dart';
import 'package:online_shop/srs/ui/main/main_screen.dart';
import 'package:online_shop/srs/ui/main/profile/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: CheckoutScreen(),
    );
  }
}
