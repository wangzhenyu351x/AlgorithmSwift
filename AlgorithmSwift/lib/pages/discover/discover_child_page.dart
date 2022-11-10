import 'package:flutter/material.dart';

class DiscoverChildPage extends StatelessWidget {
  final String title;
  Color _themeColor = Color.fromRGBO(220, 220, 220, 1.0);
  DiscoverChildPage({required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _themeColor,
        title: Text(
        title,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      ),
      body: Center(
        child: Text(title),
      ),
    );
  }
}
