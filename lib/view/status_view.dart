import 'package:flutter/material.dart';
import 'package:whatsapp_uidesign/model/status_model/StatusHelper.dart';
import 'package:whatsapp_uidesign/model/status_model/StatusItemModel.dart';

class StatusView extends StatefulWidget {
  const StatusView({Key? key}) : super(key: key);

  @override
  State<StatusView> createState() => _StatusViewState();
}

class _StatusViewState extends State<StatusView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: StatusHelper.itemCount,
        itemBuilder: (context, position) {
          StatusItemModel statusItemModel =
              StatusHelper.getStatusItem(position);
          if(position == 0){
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.green, width: 2)),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(statusItemModel.image),
                    ),
                  ),
                  title: Text(
                    statusItemModel.name,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  subtitle: Text(
                    statusItemModel.dateTime,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  trailing: Icon(Icons.more_horiz_outlined, color: Colors.orange,),
                )
              ],
            );
          }
          else if(position == 1)
          {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 5, left: 20),
                    child: Text('Recent updates')),
                Divider(),
                ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.green, width: 2)),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(statusItemModel.image),
                    ),
                  ),
                  title: Text(
                    statusItemModel.name,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  subtitle: Text(
                    statusItemModel.dateTime,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                )
              ],
            );
          }
          else
            {
            return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 5, left: 20),
            child: Text('Viewed updates')),
            Divider(),
            ListTile(
            leading: Container(
            decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.green, width: 2)),
            child: CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(statusItemModel.image),
            ),
            ),
            title: Text(
            statusItemModel.name,
            style: Theme.of(context).textTheme.headline6,
            ),
            subtitle: Text(
            statusItemModel.dateTime,
            style: Theme.of(context).textTheme.bodyText1,
            ),
            )
            ],
            );
            }
        });
  }
}
