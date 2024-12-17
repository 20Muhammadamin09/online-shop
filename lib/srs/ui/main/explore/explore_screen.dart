import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/srs/widget/product_widget.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});
  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  List<String> images = [
    "assets/images/apple.png",
    "assets/images/edit.png",
    "assets/images/facebook.png",
    "assets/images/google.png",
  ];

  List<Map> product = [
    {
      "product": "Amazing T-shirt",
      "image": "assets/images/bg2.png",
      "price": "€ 12.00"
    },
    {
      "product": "Faboulous Pants",
      "image": "assets/images/bg2.png",
      "price": "€ 15.00"
    },
    {"product": "Shoes", "image": "assets/images/bg2.png", "price": "€ 6.00"},
  ];
  List<Map> product1 = [
    {
      "product": "T-shirt",
      "image": "assets/images/bg2.png",
      "price": "€ 12.00"
    },
    {"product": " Pants", "image": "assets/images/bg2.png", "price": "€ 15.00"},
    {"product": "Shos", "image": "assets/images/bg2.png", "price": "€ 6.00"},
  ];
  int _current = 0;

  final CarouselSliderController _controller = CarouselSliderController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.search,
          size: 20,
        ),
        actions: [
          Icon(
            Icons.heart_broken,
            size: 24,
          ),
          SizedBox(
            width: 16,
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 24, bottom: 15),
                child: Icon(
                  Icons.shopping_bag_outlined,
                  size: 24,
                ),
              ),
              Positioned(
                top: 23,
                left: 12,
                child: Container(
                  alignment: Alignment.center,
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(50)),
                  child: Text(
                    "9",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ),
              )
            ],
          )
        ],
      ),
      body: ListView(
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 345,
              child: Stack(
                children: [
                  CarouselSlider(
                    carouselController: _controller,
                    options: CarouselOptions(
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      },
                      height: 345,
                      aspectRatio: 16 / 9,
                      viewportFraction: 1.1,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      scrollDirection: Axis.horizontal,
                    ),
                    items: images.map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              child: Image.asset(
                                i,
                                fit: BoxFit.fitHeight,
                              ));
                        },
                      );
                    }).toList(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 300.0),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: images.asMap().entries.map((entry) {
                          return GestureDetector(
                            onTap: () => _controller.animateToPage(entry.key),
                            child: Container(
                              width: 8,
                              height: 8,
                              margin: EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 4.0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: (Theme.of(context).brightness ==
                                              Brightness.dark
                                          ? Colors.grey
                                          : Colors.blue)
                                      .withOpacity(
                                          _current == entry.key ? 0.9 : 0.4)),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  Text(
                    "Perfect for you",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                  ),
                  Spacer(),
                  Text(
                    "See more",
                    style: TextStyle(
                        fontWeight: FontWeight.w800, color: Colors.blue),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                  itemCount: product.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 24),
                      child: ProductWidget(
                          imageName: product[index]["image"],
                          productName: product[index]["product"],
                          productPrice: product[index]["price"]),
                    );
                  }),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                children: [
                  Text(
                    "For this summer",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                  ),
                  Spacer(),
                  Text(
                    "See more",
                    style: TextStyle(
                        fontWeight: FontWeight.w800, color: Colors.blue),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                  itemCount: product.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 24),
                      child: ProductWidget(
                          imageName: product1[index]["image"],
                          productName: product1[index]["product"],
                          productPrice: product1[index]["price"]),
                    );
                  }),
            ),
          ])
        ],
      ),
    );
  }
}
