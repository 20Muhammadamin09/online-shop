import 'package:flutter/material.dart';

class TabbarScreen extends StatefulWidget {
  const TabbarScreen({super.key});

  @override
  State<TabbarScreen> createState() => _TabbarScreenState();
}

class _TabbarScreenState extends State<TabbarScreen>
    with TickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    tabController!
        .animateTo(0, duration: Duration(seconds: 1), curve: Curves.bounceOut);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Icon(
              Icons.search_rounded,
              color: Colors.blue,
              size: 30,
            ),
          )
        ],
        title: Text("Projects"),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(70),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8,horizontal: 4),
              margin: EdgeInsets.only(left: 24, right: 24),
              width: double.infinity     ,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Color(0xFFF8F9FE)

              ),
              child: TabBar(
                dividerColor: Colors.transparent,
                indicatorSize: TabBarIndicatorSize.tab,
                controller: tabController,
                indicator: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                tabs: [
                  Tab(
                    text: "To do",
                  ),
                  Tab(
                    text: "In progress",
                  ),
                  Tab(
                    text: "Finished",
                  ),
                ],
              ),
            )),
      ),
      body: TabBarView(controller: tabController, children: [
        Column(
          children: [
            SizedBox(
              height: 134,
            ),
            Center(
              child: Image.asset("assets/images/bg3.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32, bottom: 8),
              child: Text(
                "Nothing here. For now.",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
              ),
            ),
            Text(
              "This is where you’ll find your",
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              "finished projects.",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              alignment: Alignment.center,
              width: 115,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(12)),
              child: Text(
                "Start a project",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
        Container(
          color: Colors.green,
        ),
        Container(
          color: Colors.blue,
        ),
      ]),
    );
  }
}
