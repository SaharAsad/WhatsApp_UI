import 'package:flutter/material.dart';
import 'package:whatsapp_uidesign/model/chat_model/ChatHelper.dart';
import 'package:whatsapp_uidesign/model/chat_model/ChatItemModel.dart';
import 'package:whatsapp_uidesign/view/chat_screen.dart';

class ChatListView extends StatefulWidget {
  const ChatListView({Key? key}) : super(key: key);

  @override
  State<ChatListView> createState() => _ChatListViewState();
}

class _ChatListViewState extends State<ChatListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: ChatHelper.itemCount,
        itemBuilder: (context, position) {
          ChatItemModel chatItem = ChatHelper.getChatItem(position);
          return Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen(
                    name: chatItem.name,
                    image: chatItem.image,
                  )));
                },
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 28,
                    backgroundImage: NetworkImage(chatItem.image.toString()),
                  ),
                  title: Text(chatItem.name,
                      style: Theme.of(context).textTheme.headline6),
                  subtitle: Row(
                    children: [
                      Icon(position %2 == 0 ? Icons.done : Icons.done_all, color: position %2 == 0 ? Colors.grey : Colors.blue,),
                    SizedBox(width: 5,),
                      Text(chatItem.mostRecentMessage, style: Theme.of(context).textTheme.bodyText1,)
                    ],
                  ),
                  trailing: Text(chatItem.messageDate, style: Theme.of(context).textTheme.bodyText1,),
                ),
              )
            ],
          );
        });
  }
}
