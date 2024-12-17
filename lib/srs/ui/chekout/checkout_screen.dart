import 'package:flutter/material.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int selectedCard = -1;
  int selectedBox = -1;
  int check = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Choose a payment method",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 22),
              child: Text(
                "You won't be charged until you review the order on the next page",
                style: TextStyle(fontSize: 14, color: Color(0xFF71727A)),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 450,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Color(0xFFD4D6DD)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              selectedBox = 1;
                            });
                          },
                          child: Icon(
                            selectedBox == 1 ? Icons.radio_button_on : Icons.radio_button_off,
                            color: selectedBox == 1 ? Colors.blue : Colors.grey,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          "Credit Card",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF71727A)
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24,),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedCard = 1;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: selectedCard == 1 ? Color(0xFFEAF2FF) : Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Color(0xFFC5C6CC))
                        ),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Mastercard",
                                  style: TextStyle(
                                    fontSize: 18
                                  ),
                                ),
                                Text(
                                  "xxxx xxxx xxxx 9876",
                                  style: TextStyle(
                                    color: Color(0xFF71727A)
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            selectedCard == 1 ? Icon(Icons.check, color: Colors.blue,) : SizedBox()
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 8,),
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedCard = 2;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: selectedCard == 2 ? Color(0xFFEAF2FF) : Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Color(0xFFC5C6CC))
                        ),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Visa",
                                  style: TextStyle(
                                      fontSize: 18
                                  ),
                                ),
                                Text(
                                  "xxxx xxxx xxxx 9876",
                                  style: TextStyle(
                                      color: Color(0xFF71727A)
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            selectedCard == 2 ? Icon(Icons.check, color: Colors.blue,) : SizedBox()
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Center(
                      child: TextButton(
                        onPressed: () {  },
                        child: Text(
                          "+  Add new card",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.blue
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 24,),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              check == -1 ? check = 1 : check = -1;
                            });
                          },
                          child: check == 1 ? Icon(Icons.check_box, color: Colors.blue,) : Icon(Icons.check_box_outline_blank_outlined),
                        ),
                        SizedBox(width: 12,),
                        Text(
                          "My billing address is the same as my shipping \n address",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF71727A)
                          )
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
