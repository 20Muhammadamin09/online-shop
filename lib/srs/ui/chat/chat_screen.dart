import 'package:flutter/material.dart';
import 'package:online_shop/srs/ui/chat/message_screen.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<Map<String, String>> chatData = [
    {
      "name": "Haley James",
      "message": "Stand up for what you believe in",
      "avatar": "assets/images/avatar.png"
    },
    {
      "name": "Lucas Scott",
      "message": "Working on the new project!",
      "avatar": "assets/images/avatar.png"
    },
    {
      "name": "Peyton Sawyer",
      "message": "Let's meet up later",
      "avatar": "assets/images/avatar.png"
    },
    {
      "name": "Brooke Davis",
      "message": "Coffee is life!",
      "avatar": "assets/images/avatar.png"
    },
    {
      "name": "Nathan Scott",
      "message": "Game on tonight!",
      "avatar": "assets/images/avatar.png"
    },
    {
      "name": "Mouth McFadden",
      "message": "Broadcast starts at 8 PM",
      "avatar": "assets/images/avatar.png"
    },
    {
      "name": "Skills Taylor",
      "message": "Basketball practice was fun",
      "avatar": "assets/images/avatar.png"
    },
    {
      "name": "Karen Roe",
      "message": "Good morning everyone!",
      "avatar": "assets/images/avatar.png"
    },
    {
      "name": "Dan Scott",
      "message": "Let's talk business",
      "avatar": "assets/images/avatar.png"
    },
    {
      "name": "Deb Lee",
      "message": "Meeting at 3 PM",
      "avatar": "assets/images/avatar.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 24, top: 20),
          child: Text(
            "Edit",
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w600, color: Colors.blue),
          ),
        ),
        title: Text(
          "Chats",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Color(0xFF1F2024)),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 24),
            child: Image.asset("assets/images/edit.png"),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(width: 1, color: Colors.blue)),
                hintText: "Search",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
              ),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: chatData.length,
              itemBuilder: (context, index) {
                final chat = chatData[index];
                return Container(
                  margin: EdgeInsets.only(top: 16),
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  width: MediaQuery.of(context).size.width,
                  height: 83,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              MessageScreen(userName: chat["name"]!),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        Container(
                            width: 40,
                            height: 40,
                            child: Image.asset(chat["avatar"]!)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 18.5, left: 16),
                              child: Text(
                                chat["name"]!,
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w700),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 4, left: 16),
                              child: Text(
                                chat["message"]!,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF71727A)),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
