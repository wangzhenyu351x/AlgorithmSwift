
import 'package:flutter/material.dart';

class FriendsPage extends StatefulWidget {

  @override
  State<FriendsPage> createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('发现页面'),
      ),
      body: Center(
        child: Text('发现页面'),
      ),
    );
  }
}
