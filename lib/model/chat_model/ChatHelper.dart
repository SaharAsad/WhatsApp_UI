import 'ChatItemModel.dart';

class ChatHelper{

  static var chatList = [

    ChatItemModel("Mahnoor ","We had meeting tomorrow", "22:20","https://images.pexels.com/photos/12244376/pexels-photo-12244376.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" ),
    ChatItemModel('Sahar', 'Dont Call, Message Only','14:32 ','https://images.pexels.com/photos/13262826/pexels-photo-13262826.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    ChatItemModel('Asad','I will Connect in free time', '07:30 ', 'https://images.pexels.com/photos/3778212/pexels-photo-3778212.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    ChatItemModel('Mahnoor', 'Hello and welcome to ...','12:30 ', 'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    ChatItemModel('Eman','hi' ,'08:30 ', 'https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?auto=compress&cs=tinysrgb&w=600'),
    ChatItemModel('Abdullah','Good Night' ,'19:30 ', 'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    ChatItemModel('Iqra', 'OK. ','12:30 ', 'https://images.pexels.com/photos/7772121/pexels-photo-7772121.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    ChatItemModel('Ansa', 'See you tomorrow in University','11:30 ', 'https://images.pexels.com/photos/1382731/pexels-photo-1382731.jpeg?auto=compress&cs=tinysrgb&w=600'),
    ChatItemModel('Habibah','Sure why not' ,'20:30 ', 'https://images.pexels.com/photos/3778361/pexels-photo-3778361.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    ChatItemModel('Sawera',' It was amazing >3' ,' 02:30 ', 'https://images.pexels.com/photos/4769490/pexels-photo-4769490.jpeg?auto=compress&cs=tinysrgb&w=600'),
    ChatItemModel('Abdullah', 'Allah Hafiz','19:30 ', 'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    ChatItemModel('Iqra',' Alhamdulillah' ,'12:30 ', 'https://images.pexels.com/photos/7772121/pexels-photo-7772121.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    ChatItemModel('Ansa', 'Assalamuallikum','11:30 ', 'https://images.pexels.com/photos/1382731/pexels-photo-1382731.jpeg?auto=compress&cs=tinysrgb&w=600'),
    ChatItemModel('Habibah','Okay' ,'20:30 ', 'https://images.pexels.com/photos/3778361/pexels-photo-3778361.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    ChatItemModel('Sawera', 'JazakAllah',' 02:30 ', 'https://images.pexels.com/photos/4769490/pexels-photo-4769490.jpeg?auto=compress&cs=tinysrgb&w=600'),
  ];

      static ChatItemModel getChatItem (int position){
    return chatList[position];
      }
      static var itemCount = chatList.length;
}