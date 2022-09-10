import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final String image , name ;
  const ChatScreen({Key? key, required this.image, required this.name}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(backgroundImage: NetworkImage(widget.image),)
          ],
        ),
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
