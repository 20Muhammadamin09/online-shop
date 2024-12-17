import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  final String imageName;
  final String productName;
  final String productPrice;

  const ProductWidget(
      {super.key,
      required this.imageName,
      required this.productName,
      required this.productPrice});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16)),
                child: Image.asset(
                  imageName,
                  fit: BoxFit.cover,
                )),
          ),
          Container(
            width: 200,
            decoration: BoxDecoration(
              color: Color(0xFFF8F9FE),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    productPrice,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
