import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_uidesign/constants/constants.dart';
import 'package:whatsapp_uidesign/theme_changer.dart';
import 'package:whatsapp_uidesign/view/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider < ThemeChanger>(
        create : (_)  => ThemeChanger(),
      child : Builder(
        builder: (BuildContext context){
          final themeChanger = Provider.of< ThemeChanger>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            themeMode: themeChanger.themeMode,
            theme: ThemeData(
              primarySwatch: Colors.red,
            ),
            home: HomeScreen(),
          );
        },
      ),
    );

  }
}




