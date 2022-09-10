import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_uidesign/theme_changer.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body:  Column(
        children: [
        RadioListTile<ThemeMode>(
          title: const Text('Light Mode'),
          groupValue: themeChanger.themeMode,
          onChanged: themeChanger.setTheme,
          value: ThemeMode.light,
        ),
          RadioListTile<ThemeMode>(
            title: const Text('Dark Mode'),
            groupValue: themeChanger.themeMode,
            onChanged: themeChanger.setTheme,
            value: ThemeMode.dark,
          ),
          RadioListTile<ThemeMode>(
            title: const Text('system Mode'),
            groupValue: themeChanger.themeMode,
            onChanged: themeChanger.setTheme,
            value: ThemeMode.system,
          )
        ],
      ),
    );
  }
}
