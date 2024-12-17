import 'package:flutter/material.dart';
import 'package:online_shop/srs/widget/button_widget.dart';

class CenterDiolog {
  static showCenterDiolog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              "Log out",
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
            content: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 167,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Are you sure you want to log out? You'll need to login again to use the app.",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ButtonWidget(
                          isBackground: true,
                          name: "Cancel",
                          textColor: Color(0xFF006FFD),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: ButtonWidget(
                          name: "Log out",
                          textColor: Colors.white,
                          onTap: () {
                            print("Log out pressed");
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
