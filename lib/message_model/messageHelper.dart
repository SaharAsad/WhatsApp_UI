import 'MessageItemModel.dart';

class MessageHelper{

  static var messageList = [

    MessageItemModel("Mahnoor ","We had meeting tomorrow", "22:20PM","msg" ),
    MessageItemModel("Mahnoor ","We had meeting tomorrow", "22:20PM","msg" ),
    MessageItemModel("Mahnoor ","We had meeting tomorrow", "22:20PM","msg" ),
    MessageItemModel("Mahnoor ","We had meeting tomorrow", "22:20PM","msg" ),
    MessageItemModel("Mahnoor ","We had meeting tomorrow", "22:20PM","msg" ),
    MessageItemModel("Mahnoor ","We had meeting tomorrow", "22:20PM","msg" ),
    MessageItemModel("Mahnoor ","We had meeting tomorrow", "22:20PM","msg" ),
    MessageItemModel("Mahnoor ","We had meeting tomorrow", "22:20PM","msg" ),
    MessageItemModel("Mahnoor ","We had meeting tomorrow", "22:20PM","msg" ),
    MessageItemModel("Mahnoor ","We had meeting tomorrow", "22:20PM","msg" ),
    MessageItemModel("Mahnoor ","We had meeting tomorrow", "22:20PM","msg" ),

  ];

  static MessageItemModel getCHotList (int position){
    return messageList[position];
  }
  static var itemCount = messageList.length;
}