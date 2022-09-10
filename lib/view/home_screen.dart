import 'package:flutter/material.dart';
import 'package:whatsapp_uidesign/view/calls_view.dart';
import 'package:whatsapp_uidesign/view/chatlist_view.dart';
import 'package:whatsapp_uidesign/view/settings.dart';
import 'package:whatsapp_uidesign/view/status_view.dart';

// import 'package:whatsapp_uidesign/screen_two.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {

  late TabController tabController;
  var fabIcon = Icons.message ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    tabController = TabController(length: 4, vsync: this)
      ..addListener(() {
        setState((){
          switch(tabController.index){
            case 0:
              fabIcon = Icons.camera_alt_outlined;
              break;
            case 1:
              fabIcon = Icons.chat;
              break;
            case 2:
              fabIcon = Icons.camera_alt_outlined;
              break;
            case 3:
              fabIcon = Icons.call_made;
              break;
          }
        });
      });

  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('WhatsApp'),
            bottom: TabBar(
              controller: tabController,
              tabs: const [
                Tab(
                  child: Icon(Icons.camera_alt),
                ),
                Tab(
                  child: Text('Chats'),
                ),
                Tab(
                  child: Text('Status'),
                ),
                Tab(
                  child: Text('Call'),
                ),
              ],
            ),
            actions: [
              Icon(Icons.search),
              SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                  icon: Icon(Icons.more_vert_outlined),
                  itemBuilder: (context) => [
                    const PopupMenuItem(child: Text('New group')),
                    const PopupMenuItem(child: Text('New broadcast')),
                    const PopupMenuItem(child: Text('Linked device')),
                    const PopupMenuItem(child: Text('Starred messages')),
                    PopupMenuItem(
                      child : InkWell(
                        onTap: (){
                          Navigator.of(context);
                          Navigator.push(context,MaterialPageRoute(builder: (context) => SettingScreen()));
                        },
                        child: Text('Settings'))),
                  ]),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          body: TabBarView(
            controller: tabController,
            children: [
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index){
                    return const ListTile(
                      title: Text('Sahar Asad'),
                    );
                  }
              ),
              ChatListView(),
              StatusView(),
             CallsView(),
            ],
          ),

          floatingActionButton: FloatingActionButton(
            onPressed: (){

            },
            child: Icon(fabIcon),
          ),
        ));
  }
}

// Body for Tabbar socuce code
// body: TabBarView(
// children: [
// Text('1'),
// Text('2'),
// Text('3'),
//
// ],
// ),



// Align(
// alignment: Alignment.topLeft,
// child: Icon(Icons.call_made, color: Colors.green,)
// ),