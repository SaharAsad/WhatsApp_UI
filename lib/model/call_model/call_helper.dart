import 'CallItemModel.dart';

class CallHelper {

  static var callList =[
    CallItemModel('Sahar', 'Outgoing Today, 14:32 ','https://images.pexels.com/photos/13262826/pexels-photo-13262826.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    CallItemModel('Asad', 'Incoming, 07:30 ', 'https://images.pexels.com/photos/3778212/pexels-photo-3778212.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    CallItemModel('Mahnoor', 'Incoming, 18:30 ', 'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    CallItemModel('Eman', 'Incoming, 08:30 ', 'https://images.pexels.com/photos/2726111/pexels-photo-2726111.jpeg?auto=compress&cs=tinysrgb&w=600'),
    CallItemModel('Abdullah', 'Incoming, 19:30 ', 'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    CallItemModel('Iqra', 'Incoming, 12:30 ', 'https://images.pexels.com/photos/7772121/pexels-photo-7772121.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    CallItemModel('Ansa', 'Incoming, 11:30 ', 'https://images.pexels.com/photos/1382731/pexels-photo-1382731.jpeg?auto=compress&cs=tinysrgb&w=600'),
    CallItemModel('Habibah', 'Incoming, 20:30 ', 'https://images.pexels.com/photos/3778361/pexels-photo-3778361.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    CallItemModel('Sawera', 'incoming, 02:30 ', 'https://images.pexels.com/photos/4769490/pexels-photo-4769490.jpeg?auto=compress&cs=tinysrgb&w=600'),
    CallItemModel('Abdullah', 'Incoming, 19:30 ', 'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    CallItemModel('Iqra', 'Incoming, 12:30 ', 'https://images.pexels.com/photos/7772121/pexels-photo-7772121.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    CallItemModel('Ansa', 'Incoming, 11:30 ', 'https://images.pexels.com/photos/1382731/pexels-photo-1382731.jpeg?auto=compress&cs=tinysrgb&w=600'),
    CallItemModel('Habibah', 'Incoming, 20:30 ', 'https://images.pexels.com/photos/3778361/pexels-photo-3778361.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
    CallItemModel('Sawera', 'incoming, 02:30 ', 'https://images.pexels.com/photos/4769490/pexels-photo-4769490.jpeg?auto=compress&cs=tinysrgb&w=600'),
  ];

  static CallItemModel getCallItem(int position){
    return callList[position];

  }

  static var itemCount = callList.length;
}