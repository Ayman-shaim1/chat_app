import 'package:chat_app/home/convertation_item.dart';
import 'package:chat_app/shared/styled_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map<String, dynamic>> lstConvertation = [
    {
      "id":1,
      "userImage": "assets/img/image1.png",
      "userName": "Jhon Doe",
      "lastMessage": "Hello world, Hello world, Hello world,",
      "timeMessage": "12:30",
      "nbrMsgNotSeen": 2,
    },
    {
      "id":2,
      "userImage": "assets/img/image2.png",
      "userName": "Steve Smith",
      "lastMessage":
          "Hello world, Hello world, Hello world, Hello world, Hello world, Hello world,Hello world, Hello world, Hello world,",
      "timeMessage": "11:30",
      // "nbrMsgNotSeen": 2,
    },
    {
      "id":3,
      "userImage": "assets/img/image3.png",
      "userName": "Jane Doe",
      "lastMessage": "Hello world, Hello world, Hello world,",
      "timeMessage": "10:30",
      // "nbrMsgNotSeen": 2,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const StyledTitle("Messages"),
              const SizedBox(
                height: 50,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: lstConvertation.length,
                  itemBuilder: (_, index) {
                    return Dismissible(
                      key: ValueKey(lstConvertation[index]["id"]),
                      child: Convertation(lstConvertation[index]),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
