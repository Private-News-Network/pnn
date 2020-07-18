//import 'dart:ffi';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'chat_screen.dart';
import 'groups_screen.dart';
import 'profile_screen.dart';
import 'settings_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int pageIndex = 0;
  bool animate = true;

  ChatScreen _chat; //= new Conversation();
  GroupsScreen _group; // = new Story();

  Widget _showPage = ChatScreen(); // = new LoginPage();
  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return ChatScreen();
      case 1:
        return GroupsScreen();
      case 2:
        return SettingsScreen();
      case 3:
        return ProfileScreen();

      default:
        return ChatScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: pageIndex,
        items: <Widget>[
          Icon(
            Icons.chat_bubble,
            size: 19,
            color: Colors.white,
          ),
          Icon(
            Icons.group,
            size: 19,
            color: Colors.white,
          ),
          Icon(
            Icons.settings,
            size: 19,
            color: Colors.white,
          ),
          Icon(
            Icons.person,
            size: 19,
            color: Colors.white,
          ),
        ],
        color: Colors.black,
        buttonBackgroundColor: Colors.grey[900],
        backgroundColor: Colors.grey[900],
        onTap: (int tappedIndex) {
          setState(() {
            animate = false;
            pageIndex = tappedIndex;
            _showPage = _pageChooser(tappedIndex);
          });
        },
      ),
      body: Container(
        color: Colors.black,
        child: Center(
          child: _showPage,
        ),
      ),
    );
  }
}
