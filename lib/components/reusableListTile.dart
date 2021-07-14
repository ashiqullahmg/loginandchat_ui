import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  final String name;
  final String message;
  final String image;
  final String time;
  ChatList(
      {required this.name,
      required this.message,
      required this.image,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
            horizontalTitleGap: 5,
            contentPadding: EdgeInsets.all(15),
            dense: true,
            leading: CircleAvatar(
              backgroundColor: Colors.teal,
              radius: 25.0,
              backgroundImage: AssetImage('images/$image'),
            ),
            title: Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    time,
                  ),
                ),
              ],
            ),
            subtitle: Text(message),
            onTap: () {
              print(name);
            }),
        Divider(
          thickness: 1,
          height: 0,
        )
      ],
    );
  }
}
