import 'package:flutter/material.dart';
import 'package:new_pinput/new_pinput.dart';
import 'package:online_shop/srs/dialog/center_diolog.dart';
import 'package:online_shop/srs/ui/main/profile/profile_screen.dart';
import 'package:online_shop/srs/widget/button_widget.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Container(
          //       margin: EdgeInsets.only(right: 8),
          //       width: 48,
          //       height: 48,
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(15)
          //       ),
          //       child: TextField(
          //         textAlign: TextAlign.center,
          //         maxLength: 1,
          //         decoration: InputDecoration(
          //           counterText: "",
          //           border: OutlineInputBorder(
          //             borderRadius: BorderRadius.circular(8)
          //           ),
          //           focusedBorder: OutlineInputBorder(
          //             borderSide: BorderSide(width: 2, color: Colors.blue),
          //             borderRadius: BorderRadius.circular(15)
          //           )
          //         ),
          //         onChanged: (value) {
          //           if (value.isNotEmpty) {
          //             FocusScope.of(context).nextFocus();
          //           }
          //         },
          //       ),
          //     ),
          //     Container(
          //       margin: EdgeInsets.only(right: 8),
          //       width: 48,
          //       height: 48,
          //       decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(12)
          //       ),
          //       child: TextField(
          //         textAlign: TextAlign.center,
          //         maxLength: 1,
          //         decoration: InputDecoration(
          //             counterText: "",
          //             border: OutlineInputBorder(
          //                 borderRadius: BorderRadius.circular(8)
          //             ),
          //             focusedBorder: OutlineInputBorder(
          //                 borderSide: BorderSide(width: 2, color: Colors.blue),
          //                 borderRadius: BorderRadius.circular(12)
          //             )
          //         ),
          //         onChanged: (value) {
          //           if (value.isNotEmpty) {
          //             FocusScope.of(context).nextFocus();
          //           }else {
          //             FocusScope.of(context).previousFocus();
          //           }
          //         },
          //       ),
          //     ),
          //     Container(
          //       margin: EdgeInsets.only(right: 8),
          //       width: 48,
          //       height: 48,
          //       decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(12)
          //       ),
          //       child: TextField(
          //         textAlign: TextAlign.center,
          //         maxLength: 1,
          //         decoration: InputDecoration(
          //             counterText: "",
          //             border: OutlineInputBorder(
          //                 borderRadius: BorderRadius.circular(8)
          //             ),
          //             focusedBorder: OutlineInputBorder(
          //                 borderSide: BorderSide(width: 2, color: Colors.blue),
          //                 borderRadius: BorderRadius.circular(12)
          //             )
          //         ),
          //         onChanged: (value) {
          //           if (value.isNotEmpty) {
          //             FocusScope.of(context).nextFocus();
          //           }else {
          //             FocusScope.of(context).previousFocus();
          //           }
          //         },
          //       ),
          //     ),
          //     Container(
          //       margin: EdgeInsets.only(right: 8),
          //       width: 48,
          //       height: 48,
          //       decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(12)
          //       ),
          //       child: TextField(
          //         textAlign: TextAlign.center,
          //         maxLength: 1,
          //         decoration: InputDecoration(
          //             counterText: "",
          //             border: OutlineInputBorder(
          //                 borderRadius: BorderRadius.circular(8)
          //             ),
          //             focusedBorder: OutlineInputBorder(
          //                 borderSide: BorderSide(width: 2, color: Colors.blue),
          //                 borderRadius: BorderRadius.circular(12)
          //             )
          //         ),
          //         onChanged: (value) {
          //           if (value.isNotEmpty) {
          //
          //           }else {
          //             FocusScope.of(context).previousFocus();
          //           }
          //         },
          //       ),
          //     ),
          //   ],
          // ),
          SizedBox(
            height: 88.5,
          ),
          Text(
            "Enter confirmation code",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "A 4-digit code was sent to \n lucasscott3@email.com",
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Pinput(
              defaultPinTheme: PinTheme(
                width: 56,
                height: 56,
                textStyle: TextStyle(
                    fontSize: 14, color: Color.fromRGBO(30, 60, 87, 1)),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              focusedPinTheme: PinTheme(
                width: 56,
                height: 56,
                textStyle: TextStyle(
                    fontSize: 14, color: Color.fromRGBO(30, 60, 87, 1)),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 128,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Resend code",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue),
            ),
          ),
          SizedBox(
            height: 28,
          ),
          ButtonWidget(
              name: "Continue",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              })
        ],
      ),
    );
  }
}
