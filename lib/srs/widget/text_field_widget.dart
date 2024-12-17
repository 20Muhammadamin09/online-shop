import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final bool obscureText;
  final String hintText;
  final Widget? suffixIcon;
  final TextEditingController controller;

  const TextFieldWidget(
      {super.key,
      required this.hintText,
      this.suffixIcon,
      this.obscureText = false,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 1, color: Colors.blue)),
          hintText: hintText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
