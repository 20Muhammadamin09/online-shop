import 'package:flutter/material.dart';

class ShoppingScreen extends StatefulWidget {
  const ShoppingScreen({super.key});

  @override
  State<ShoppingScreen> createState() => _ShoppingScreenState();
}

class _ShoppingScreenState extends State<ShoppingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Your bag"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(top: 35),
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 16),
                        width: 90,
                        height: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue
                        ),
                      ),
                      Expanded(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Amazing T-shirt",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700
                            ),
                          ),
                          Text(
                            "Black / M",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey
                            ),
                          ),
                          SizedBox(height: 20,),
                          Row(children: [
                            Icon(Icons.remove, size: 15, color: Colors.blue,),
                            SizedBox(width: 6,),
                            Text(
                              "1",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400
                              ),
                            ),
                            SizedBox(width: 6,),
                            Icon(Icons.add, size: 15, color: Colors.blue,),
                            Spacer(),
                            Text("€ 12.00")
                          ],)
                        ],
                      ))
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey
                  ),
                ),
                Text(
                  "€ 83.00",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: Colors.black
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)
                  )
                )
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  "Checkout",
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),
              )
            ),
          )
        ],
      ),
    );
  }
}
