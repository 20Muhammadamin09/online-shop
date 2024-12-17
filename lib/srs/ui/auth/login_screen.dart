import 'package:flutter/material.dart';
import 'package:online_shop/srs/ui/auth/register_screen.dart';
import 'package:online_shop/srs/ui/chat/message_screen.dart';
import 'package:online_shop/srs/widget/button_widget.dart';
import 'package:online_shop/srs/widget/text_field_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isHide = true;
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 312,
            color: Colors.blue.withOpacity(0.1),
            child: Icon(
              Icons.image_outlined,
              size: 50,
              color: Colors.blue,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 40),
            child: Text(
              "Welcome!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
            ),
          ),
          TextFieldWidget(
            hintText: "Email Address",
            controller: controllerEmail,
          ),
          TextFieldWidget(
            controller: controllerPassword,
            hintText: "Password",
            obscureText: isHide,
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isHide = !isHide;
                  });
                },
                icon: Icon(isHide
                    ? Icons.remove_red_eye
                    : Icons.hide_source_outlined)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Forgot password?",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          ButtonWidget(
            name: "Login",
            onTap: () {
              if (controllerEmail.text.isEmpty ||
                  controllerPassword.text.isEmpty) {
                showSnackBar("Iltimos barcha maydonni to'ldiring", Colors.red);
              } else {
                if (controllerEmail.text.endsWith("@gmail.com") ||
                    controllerEmail.text.endsWith("@mail.ru") ||
                    controllerEmail.text.endsWith("@yandex.ru")) {
                  showSnackBar("kirishga ruxsat", Colors.green);
                } else {
                  showSnackBar("kirishga ruxsat yo'q", Colors.red);
                }
              }
            },
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  "Not a member?",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            MessageScreen(userName: "userName")),
                  );
                },
                child: Text(
                  "Register now",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 48,
          ),
          Center(
            child: Text(
              "Or continue with",
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/google.png"),
              SizedBox(
                width: 12,
              ),
              Image.asset("assets/images/apple.png"),
              SizedBox(
                width: 12,
              ),
              Image.asset("assets/images/facebook.png"),
            ],
          )
        ],
      ),
    );
  }

  void showSnackBar(String message, Color color) {
    var snackdemo = SnackBar(
      backgroundColor: color,
      content: Text(message),
      elevation: 10,
      duration: Duration(seconds: 2),
      behavior: SnackBarBehavior.fixed,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackdemo);
  }
}
