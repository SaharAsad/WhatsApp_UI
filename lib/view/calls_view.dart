import 'package:flutter/material.dart';
import 'package:whatsapp_uidesign/model/call_model/call_helper.dart';
import 'package:whatsapp_uidesign/model/call_model/CallItemModel.dart';

class CallsView extends StatefulWidget {
  const CallsView({Key? key}) : super(key: key);

  @override
  State<CallsView> createState() => _CallsViewState();
}

class _CallsViewState extends State<CallsView> {
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        itemCount: CallHelper.itemCount,
        itemBuilder: (context, position){
          CallItemModel callItem = CallHelper.getCallItem(position);
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundImage: NetworkImage(callItem.image),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(callItem.name, style: Theme.of(context).textTheme.headline6,),
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(position == 0 ? Icons.call_made : Icons.call_missed, size: 19 ,color: position == 0 ? Colors.green : Colors.red,),
                                      Text(callItem.dataTime),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Icon(position == 0 ? Icons.call : Icons.videocam, color: Colors.orange),
                        ],
                    ),
                      ),)
                  ],
                ),
              ),
            ],
          );
        }
    );
  }
}















// source code for RichText

// Column(
// children: [
// ListTile(
// leading:  CircleAvatar(
// radius: 28,
// backgroundImage: NetworkImage(callItem.image),
// ),
// title: Text(callItem.name),
// subtitle: RichText(
// text: const TextSpan(
// children:  [
// WidgetSpan(child: Icon(Icons.call_made, color: Colors.green, size: 16,),
// ),
//
// TextSpan(
// text: "1 September, 3:25",
// style: TextStyle( color: Colors.black54),
// ),
// ],
// ),
// ),
// trailing: Icon( position/2 == 0 ? Icons.call : Icons.videocam, color: Colors.orange,),
// ),
// ],
// );
