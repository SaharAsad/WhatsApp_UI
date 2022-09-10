import 'package:whatsapp_uidesign/model/status_model/StatusItemModel.dart';

class StatusHelper{

  static var statusList = [
    StatusItemModel('My status', 'Yesterday, 23:50 ','https://images.pexels.com/photos/13262826/pexels-photo-13262826.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
     StatusItemModel('Mahnoor', '30 minutes ago ', 'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    StatusItemModel('Eman', 'Today, 08:30 ', 'https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?auto=compress&cs=tinysrgb&w=600'),


  ];
  static StatusItemModel getStatusItem(int position){
    return statusList[position];
  }
  static var itemCount = statusList.length;
}