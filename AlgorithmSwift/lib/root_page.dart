import 'package:flutter/material.dart';
import 'package:wx_demo/pages/chat_page.dart';
import 'package:wx_demo/pages/discover/discover_page.dart';
import 'package:wx_demo/pages/friends_page.dart';
import 'package:wx_demo/pages/mine_page.dart';

class RootPage extends StatefulWidget {
  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _currentIndex = 2;
  List<Widget> _pages = [ChatPage(), FriendsPage(), DiscoverPage(), MinePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'images/tabbar_chat.png',
              height: 20,
              width: 20,
            ),
            activeIcon: Image.asset(
              'images/tabbar_chat_hl.png',
              height: 20,
              width: 20,
            ),
            label: '微信',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'images/tabbar_friends.png',
              height: 20,
              width: 20,
            ),
            activeIcon: Image.asset(
              'images/tabbar_friends_hl.png',
              height: 20,
              width: 20,
            ),
            label: '通信录',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'images/tabbar_discover.png',
              height: 20,
              width: 20,
            ),
            activeIcon: Image.asset(
              'images/tabbar_discover_hl.png',
              height: 20,
              width: 20,
            ),
            label: '发现',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'images/tabbar_mine.png',
              height: 20,
              width: 20,
            ),
            activeIcon: Image.asset(
              'images/tabbar_mine_hl.png',
              height: 20,
              width: 20,
            ),
            label: '我的',
          ),
        ],
      ),
    );
  }
}
