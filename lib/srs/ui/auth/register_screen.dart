import 'package:flutter/material.dart';
import 'package:online_shop/srs/ui/auth/otp_screen.dart';
import 'package:online_shop/srs/widget/button_widget.dart';
import 'package:online_shop/srs/widget/text_field_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isHide1 = true;
  bool isHide2 = true;
  bool _isChecked = false;

  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  TextEditingController controllerConfirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sign Up",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Create an account to get started",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 24),
            child: Text(
              "Name",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
            ),
          ),
          TextFieldWidget(
            hintText: "Your name",
            controller: controllerName,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 24),
            child: Text(
              "Email Address",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
            ),
          ),
          TextFieldWidget(
            hintText: "name@email.com",
            controller: controllerEmail,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, top: 24),
            child: Text(
              "Password",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
            ),
          ),
          TextFieldWidget(
            controller: controllerPassword,
            hintText: "Create a passaword",
            obscureText: isHide1,
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isHide1 = !isHide1;
                  });
                },
                icon: Icon(isHide1
                    ? Icons.remove_red_eye
                    : Icons.hide_source_outlined)),
          ),
          TextFieldWidget(
            controller: controllerConfirmPassword,
            hintText: "Confirm password",
            obscureText: isHide2,
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isHide2 = !isHide2;
                  });
                },
                icon: Icon(isHide2
                    ? Icons.remove_red_eye
                    : Icons.hide_source_outlined)),
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 8),
                child: Checkbox(
                  value: _isChecked,
                  onChanged: (bool? newValue) {
                    setState(() {
                      _isChecked = newValue!;
                    });
                  },
                ),
              ),
              Text(
                "I've read and agree with the Terms and \n Conditions and the Privacy Policy.",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 12, color: Colors.grey),
              )
            ],
          ),
          SizedBox(
            height: 48,
          ),
          ButtonWidget(
              name: "Continue",
              onTap: () {
                bool isValid = true;

                if (controllerEmail.text.isEmpty ||
                    controllerPassword.text.isEmpty ||
                    controllerName.text.isEmpty ||
                    controllerConfirmPassword.text.isEmpty) {
                  showSnackBar(
                      "Iltimos barcha maydonni to'ldiring", Colors.red);
                  isValid = false;
                }

                if (!(controllerEmail.text.endsWith("@gmail.com") ||
                    controllerEmail.text.endsWith("@mail.ru") ||
                    controllerEmail.text.endsWith("@yandex.ru"))) {
                  showSnackBar("Email formati noto'g'ri", Colors.red);
                  isValid = false;
                }

                if (controllerPassword.text != controllerConfirmPassword.text) {
                  showSnackBar("Parollar mos emas", Colors.red);
                  isValid = false;
                }

                if (isValid) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OtpScreen()),
                  );
                }
              })
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
