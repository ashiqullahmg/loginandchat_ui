import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginandchat_ui/components/reusableListTile.dart';
import 'package:loginandchat_ui/networking/friends.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  ChatScreen chatScreen = ChatScreen();
  List<Friends> friends = [
    Friends(
        name: 'Ashiq Khan',
        message: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
        image: 'ashiq.jpg',
        time: '12:45 PM'),
    Friends(
        name: 'Aslam Khan',
        message: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
        image: 'aslam.jpg',
        time: '1:54 AM'),
    Friends(
        name: 'Katrina Kaif',
        message: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
        image: 'katrina.jpg',
        time: '5:34 AM'),
    Friends(
        name: 'Aisha Khan',
        message: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
        image: 'aisha.jpg',
        time: '8:13 AM'),
    Friends(
        name: 'Alina Khan',
        message: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
        image: 'alina.jpg',
        time: '9:05 PM'),
  ];

  @override
  Widget build(BuildContext context) {
    print(friends.length.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 42.0,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10)),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    fontSize: 20.0,
                  ),
                  isDense: true,
                  contentPadding: EdgeInsets.all(12),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 25.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Flexible(
              child: ListView.builder(
                itemCount: friends.length,
                itemBuilder: (context, index) {
                  return ChatList(
                    name: friends[index].name,
                    message: friends[index].message,
                    image: friends[index].image,
                    time: friends[index].time,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
